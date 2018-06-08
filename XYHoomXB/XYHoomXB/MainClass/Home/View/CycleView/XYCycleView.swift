//
//  XYCycleView.swift
//  XYHoomXB
//
//  Created by HXB-xiaoYang on 2018/6/8.
//  Copyright © 2018年 VansXY. All rights reserved.
//

import UIKit

class XYCycleView: UIView, UICollectionViewDelegate, UICollectionViewDataSource, XYCyclePagerTransformLayoutDelegate {
    
    
    lazy var backgroundView = UIView()
    lazy var collectionView = UICollectionView()
    var layout = XYCyclePagerViewLayout()
    var isInfiniteLoop: Bool!
    var autoScrollInterval: CGFloat!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUI()
    }
    
    private func setUI() {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = UICollectionViewCell()
        return cell
    }
    
    func pagerViewTransform_initializeTransform(Layout: XYCyclePagerViewLayout, attributes: UICollectionViewLayoutAttributes) {
        
    }
    
    func pagerViewTransform_applyTransform(Layout: XYCyclePagerViewLayout, attributes: UICollectionViewLayoutAttributes) {
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
