//
//  XYPageControl.swift
//  XYHoomXB
//
//  Created by HXB-xiaoYang on 2018/6/8.
//  Copyright © 2018年 VansXY. All rights reserved.
//

import UIKit

class XYPageControl: UIPageControl {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        isUserInteractionEnabled = false
        pageIndicatorTintColor = UIColor.lightText
        currentPageIndicatorTintColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
