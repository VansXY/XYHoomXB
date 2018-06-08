//
//  XYHomeBannerModel.swift
//  XYHoomXB
//
//  Created by HXB-xiaoYang on 2018/6/8.
//  Copyright © 2018年 VansXY. All rights reserved.
//

import UIKit

class XYHomeBannerModel: NSObject {
    /// 标题
    @objc dynamic var title: String = ""
    
    /// 图片绝对地址
    @objc dynamic var image: String = ""
    
    /// 跳转链接
    @objc dynamic var url: String = ""
    
    /// 开始时间
    @objc dynamic var start: String = ""
    
    /// 结束时间
    @objc dynamic var end: String = ""
    
    ///  背景色
    @objc dynamic var color: String = ""
    
    /// id
    @objc dynamic var ID: String = ""
    
    /// 创建时间
    @objc dynamic var createTime: String = ""
    
    /// 更新时间
    @objc dynamic var updateTime: String = ""
    
    /// 跳转类型
    @objc dynamic var type: String = ""
    
    /// 链接地址
    @objc dynamic var link: String = ""
}
