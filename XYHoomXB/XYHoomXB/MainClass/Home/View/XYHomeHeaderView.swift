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
        let cycleView = UIView(frame: CGRect(x: 0, y: 110, width: kScreenWidth, height: 100))
        cycleView.backgroundColor = UIColor.brown
        addSubview(cycleView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}


