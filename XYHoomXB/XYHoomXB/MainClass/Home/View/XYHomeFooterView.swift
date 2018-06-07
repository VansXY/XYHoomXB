//
//  XYHomeFooterView.swift
//  XYHoomXB
//
//  Created by HXB-xiaoYang on 2018/6/7.
//  Copyright © 2018年 VansXY. All rights reserved.
//

import UIKit

class XYHomeFooterView: UIView {
    
    lazy var firstImageView = UIImageView()
    lazy var secondImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.gray
        setUI()
    }
    
    private func setUI () {
        let first_image = UIImage(named: "homePlatformIntroductionPlaceholder")
        firstImageView.frame = CGRect(x: 10, y: 10, width: kScreenWidth/2 - 20, height: 80)
        firstImageView.image = first_image
        firstImageView.contentMode = .scaleAspectFit
        firstImageView.backgroundColor = UIColor.red
        addSubview(firstImageView)
        
        secondImageView.frame = CGRect(x: kScreenWidth/2 + 10, y: 10, width: kScreenWidth/2 - 20, height: 80)
        secondImageView.image = first_image
        secondImageView.contentMode = .scaleAspectFit
        addSubview(secondImageView)
        
        let bottomLabel = UILabel(frame: CGRect(x: 0, y: 100, width: kScreenWidth, height: 40))
        bottomLabel.textAlignment = .center
        bottomLabel.text = "hhhhhhhh我是最底部"
        addSubview(bottomLabel)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
