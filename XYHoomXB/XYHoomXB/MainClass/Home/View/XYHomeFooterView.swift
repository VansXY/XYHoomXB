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
        backgroundColor = XYColor.background
        setUI()
    }
    
    private func setUI () {
        let first_image = UIImage(named: "homePlatformIntroductionPlaceholder")
        firstImageView.frame = CGRect(x: 10, y: 0, width: kScreenWidth / 2 - 15, height: 80)
        firstImageView.image = first_image
        firstImageView.contentMode = .scaleAspectFit
        addSubview(firstImageView)
        
        secondImageView.frame = CGRect(x: kScreenWidth/2 + 5, y: 0, width: kScreenWidth/2 - 15, height: 80)
        secondImageView.image = first_image
        secondImageView.contentMode = .scaleAspectFit
        addSubview(secondImageView)
        
        let bottomLabel = UILabel(frame: CGRect(x: 0, y: 90, width: kScreenWidth, height: 30))
        bottomLabel.textAlignment = .center
        bottomLabel.text = "我是最底部"
        bottomLabel.textColor = XYColor.normal
        bottomLabel.font = XYFont.light
        addSubview(bottomLabel)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
