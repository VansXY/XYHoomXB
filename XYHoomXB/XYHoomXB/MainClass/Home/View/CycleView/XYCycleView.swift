//
//  XYCycleView.swift
//  XYHoomXB
//
//  Created by HXB-xiaoYang on 2018/6/8.
//  Copyright © 2018年 VansXY. All rights reserved.
//

import UIKit

/// 创建协议，分发点击cell的事件
protocol XYCycleViewDelegate: class {
    func cycleViewDidSelectedItemAtIndex(_ index: NSInteger) -> ()
}

class XYCycleView: UIView, UICollectionViewDelegate, UICollectionViewDataSource {
    
    lazy var backgroundView = UIView()
    
    lazy var collectionView: UICollectionView = {
        let layout = XYCyclePagerTransformLayout()
        let collectionView = UICollectionView(frame: bounds, collectionViewLayout: layout)
        collectionView.bounces = false
        collectionView.isPagingEnabled = true
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.delegate = self as UICollectionViewDelegate
        collectionView.dataSource = self as UICollectionViewDataSource
        collectionView.register(XYCycleCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return collectionView
    }()
    
    lazy var pageControl = XYPageControl()
    lazy var timer = Timer()
    
    /// CollectionView复用cell的机制,不管当前的section有道少了item,当cell的宽和屏幕的宽一致是,当前屏幕最多显示两个cell(图片切换时是两个cell),切换完成时有且仅有一个cell,即使放大1000倍,内存中最多加载两个cell,所以不会造成内存暴涨现象
    let kItemCount = 1000
    /// 设置代理
    weak var delegate : XYCycleViewDelegate?
    /// 获取图片的数组
    var imageArray: [String]? {
        didSet {
            pageControl.numberOfPages = (imageArray?.count)!
            collectionView.reloadData()
            let indexPath = IndexPath(item: (imageArray?.count)! * kItemCount, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .left, animated: true)
        }
    }
    
    /// 设置pageControl的颜色
    var pageColor: UIColor? {
        didSet {
            pageControl.pageIndicatorTintColor = pageColor
        }
    }
    
    /// 设置当前点的颜色
    var currentPageColor: UIColor? {
        didSet {
            pageControl.currentPageIndicatorTintColor = currentPageColor
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        pageControl.frame = CGRect(x: kScreenWidth / 2 - 60, y: bounds.size.height - 20, width: 120, height: 20)
        timer = Timer(timeInterval: 2.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        RunLoop.current.add(timer, forMode: .commonModes)
        
        setUI()
    }
    
    
    ///  更新定时器 获取当前位置,滚动到下一位置
    @objc func updateTimer() {
        let indexPath = collectionView.indexPathsForVisibleItems.last
        guard indexPath != nil else {
            return
        }
        let nextPath = IndexPath(item: (indexPath?.item)! + 1, section: (indexPath?.section)!)
        collectionView.scrollToItem(at: nextPath, at: .left, animated: true)
    }
    
    private func setUI() {
        
        addSubview(collectionView)
        addSubview(pageControl)
        /// 开启定时器
        timer.fireDate = Date(timeIntervalSinceNow: 2.0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func removeFromSuperview() {
        super.removeFromSuperview()
        timer.invalidate()
    }
}

//MARK: 数据源和代理方法
extension XYCycleView {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (imageArray?.count)! * 2 * kItemCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! XYCycleCollectionViewCell
        cell.imageMode = imageContentMode.scaleAspectFill
        cell.imageUrlString = imageArray?[indexPath.item % (imageArray?.count)!] ?? ""
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.cycleViewDidSelectedItemAtIndex(indexPath.item % (imageArray?.count)!)
    }
}

//MARK: UIScrollViewDelegate
extension XYCycleView {
    //MARK: 开始拖拽时,停止定时器
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        timer.fireDate = Date.distantFuture
    }
    
    //MARK: 结束拖拽时,恢复定时器
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        timer.fireDate = Date(timeIntervalSinceNow: 2.0)
    }
    
    //MARK: 监听手动减速完成(停止滚动)  - 获取当前页码,滚动到下一页,如果当前页码是第一页,继续往下滚动,如果是最后一页回到第一页
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let offsetX = scrollView.contentOffset.x
        let page = NSInteger(offsetX / kScreenWidth)
        let itemCount = collectionView.numberOfItems(inSection: 0)
        
        if page == 0 {
            collectionView.contentOffset = CGPoint(x: offsetX + CGFloat((imageArray?.count)!) * CGFloat(kItemCount), y: 0)
        } else if page == itemCount {
            collectionView.contentOffset = CGPoint(x: offsetX - CGFloat((imageArray?.count)!) * CGFloat(kItemCount), y: 0)
        }
        
        
    }
    
    //MARK: 滚动动画结束的时候调用 - 获取当前页码,滚动到下一页,如果当前页码是第一页,继续往下滚动,如果是最后一页回到第一页
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        scrollViewDidEndDecelerating(collectionView)
    }
    
    //MARK: 正在滚动(设置分页) -- 算出滚动位置,更新指示器
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offsetX = scrollView.contentOffset.x
        var page = NSInteger(offsetX / kScreenWidth + 0.5)
        page = page % (imageArray?.count)!
        pageControl.currentPage = page
    }
}
