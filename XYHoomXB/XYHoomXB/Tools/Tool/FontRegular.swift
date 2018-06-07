//
//  FontRegular.swift
//  XYHoomXB
//
//  Created by HXB-xiaoYang on 2018/6/7.
//  Copyright © 2018年 VansXY. All rights reserved.
//

import UIKit

struct XYFont {
    
    private static let fontName = "HelveticaNeue"
    
    /// 用于个人账户也最重要金额文字 【40】
    static let mostImportant = UIFont(name: fontName, size: 40)!
    
    /// 用于强调性醒目文字 【24】
    static let important = UIFont(name: fontName, size: 24)!
    
    /// 用于页面主要标题内容 【19】
    static let pageTitle = UIFont(name: fontName, size: 19)!
    
    /// 用于导航栏标题 【18】
    static let navTitle = UIFont(name: fontName, size: 18)!
    
    /// 用于导航栏标题(多个标题时) 【17】
    static let navMultiTitle = UIFont(name: fontName, size: 17)!
    
    /// 用于一级button文字 【16】
    static let firstClass = UIFont(name: fontName, size: 16)!
    
    /// 用于大部分正文内容文字 【15】
    static let mainContent = UIFont(name: fontName, size: 15)!
    
    /// 用于交易、体现记录中文字【14】
    static let transaction = UIFont(name: fontName, size: 14)!
    
    /// 用于协调等辅助性文字 【12】
    static let light = UIFont(name: fontName, size: 12)!
    
    /// 用于tabbar 【10】
    static let tabBar = UIFont(name: fontName, size: 10)!
}

