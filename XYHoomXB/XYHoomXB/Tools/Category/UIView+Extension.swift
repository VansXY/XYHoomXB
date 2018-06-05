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
        return self.frame.origin.x
    }
    /// Y值
    var y: CGFloat {
        return self.frame.origin.y
    }
    /// 宽度
    var width: CGFloat {
        return self.frame.size.width
    }
    /// 高度
    var height: CGFloat {
        return self.frame.size.height
    }
    /// 尺寸
    var size: CGSize {
        return self.frame.size
    }
    /// 点
    var point: CGPoint {
        return self.frame.origin
    }
}


