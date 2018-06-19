//
//  UIColor+Extension.swift
//  XYHoomXB
//
//  Created by HXB-xiaoYang on 2018/6/7.
//  Copyright © 2018年 VansXY. All rights reserved.
//

import UIKit

extension UIColor {
    /// 十六进制颜色
    ///
    /// - Parameter hex: 颜色的色号
    convenience init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(
            red: CGFloat(r) / 0xff,
            green: CGFloat(g) / 0xff,
            blue: CGFloat(b) / 0xff,
            alpha: 1
        )
    }
    
    /// 创建一个随机颜色
    ///
    /// - Parameter alpha: 透明度
    /// - Returns: UIColor
    func hxb_randomColor(alpha: CGFloat) -> UIColor {
        return UIColor(displayP3Red: CGFloat(arc4random()) / 255.0,
                       green: CGFloat(arc4random()) / 255.0,
                       blue: CGFloat(arc4random()) / 255.0,
                       alpha: alpha)
    }
    
}
