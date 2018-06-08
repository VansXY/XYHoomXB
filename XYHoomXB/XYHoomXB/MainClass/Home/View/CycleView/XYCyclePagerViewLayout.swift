//
//  XYCyclePagerViewLayout.swift
//  XYHoomXB
//
//  Created by HXB-xiaoYang on 2018/6/8.
//  Copyright © 2018年 VansXY. All rights reserved.
//

import UIKit

/// 轮播图展示类型
enum XYCyclePagerTransformLayoutType {
    case XYCyclePagerTransformLayoutNormal
    case XYCyclePagerTransformLayoutCoverflow
    case XYCyclePagerTransformLayoutLinear
}

/// 轮播图滚动方向
enum XYTransformLayoutItemDirection {
    case XYTransformLayoutItemLeft
    case XYTransformLayoutItemCenter
    case XYTransformLayoutItemRight
}

class XYCyclePagerViewLayout: NSObject {
    var itemSize: CGSize!
    var itemSpacing: CGFloat!
    var sectionInset: UIEdgeInsets!
    var layoutType: XYCyclePagerTransformLayoutType!
    /// 缩放默认 0.8
    var minimumScale: CGFloat!
    /// 透明度默认 1.0
    var minimumAlpha: CGFloat!
    /// 角度默认 0.2
    var maximumAngle: CGFloat!
    var isInfiniteLoop: Bool!
    var rateOfChange: CGFloat!
    var adjustSpacingWhenScroling: Bool!
    /// pageView cell item vertical centering
    var itemVerticalCenter: Bool!
    /// first and last item horizontalc enter, when isInfiniteLoop is NO
    var itemHorizontalCenter: Bool!
    
    override init() {
        super.init()
        itemVerticalCenter = true;
        minimumScale = 0.8;
        minimumAlpha = 1.0;
        maximumAngle = 0.2;
        rateOfChange = 0.4;
        adjustSpacingWhenScroling = true;
    }
    
    
}
