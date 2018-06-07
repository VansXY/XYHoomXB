//
//  UIView+Extension.swift
//  XYHoomXB
//
//  Created by HXB-xiaoYang on 2018/6/5.
//  Copyright © 2018年 VansXY. All rights reserved.
//

import UIKit

/// 对UIView的扩展
extension UIView {
    /// X值
    var x: CGFloat {
        get {
            return frame.origin.x
        }
        set {
            frame = CGRect(x:newValue, y:frame.origin.y, width:frame.size.width
                , height:frame.size.height)
        }
    }
    /// Y值
    var y: CGFloat {
        get {
            return self.frame.origin.y
        }
        set {
            frame = CGRect(x:frame.origin.x, y:newValue, width:frame.size.width
                , height:frame.size.height)
        }
        
    }
    /// 宽度
    var width: CGFloat {
        get {
            return self.frame.size.width
        }
        set {
            frame = CGRect(x:frame.origin.x, y:frame.origin.y, width:newValue
                , height:frame.size.height)
        }
    }
    /// 高度
    var height: CGFloat {
        get {
            return self.frame.size.height
        }
        set {
            frame = CGRect(x:frame.origin.x, y:frame.origin.y, width:frame.size.width
                , height:newValue)
        }
    }
    /// 尺寸
    var size: CGSize {
        get {
            return self.frame.size
        }
        set {
            frame = CGRect(origin: frame.origin, size: newValue)
        }
    }
    /// 点
    var origin: CGPoint {
        get {
            return self.frame.origin
        }
        set {
            frame = CGRect(origin: newValue, size: frame.size)
        }
    }
    /// centerX
    var centerX: CGFloat {
        get {
            return center.x
        }
        set {
            center = CGPoint(x: newValue, y: center.y)
        }
    }
    /// centerY
    var centerY: CGFloat {
        get {
            return center.y
        }
        set {
            center = CGPoint(x: center.x, y: newValue)
        }
    }
    
}


