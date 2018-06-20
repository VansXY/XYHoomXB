//
//  XYHomeHeaderView.swift
//  XYHoomXB
//
//  Created by HXB-xiaoYang on 2018/6/7.
//  Copyright © 2018年 VansXY. All rights reserved.
//

import UIKit

class XYHomeHeaderView: UIView {

    lazy var headerImageView = UIImageView()
    lazy var cycleView = XYCycleView()
    let imageArray : [String]? = ["banner01.jpg", "banner02.jpg", "banner03.jpg", "banner04.jpg"]
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.gray
        setBackImageView()
        setCycleView()
    }
    
    private func setBackImageView () {
        let bg_image = UIImage(named: "Home_top_bg")
        headerImageView.frame = CGRect(x: 0, y: -100, width: kScreenWidth, height: 200)
        headerImageView.image = bg_image
        headerImageView.contentMode = .scaleAspectFill
        addSubview(headerImageView)
    }
    
    private func setCycleView() {
        cycleView = XYCycleView(frame: CGRect(x: 0, y: 110, width: kScreenWidth, height: 100))
        cycleView.pageColor = UIColor.lightGray
        cycleView.currentPageColor = UIColor.white
        cycleView.imageArray = imageArray
        addSubview(cycleView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}


