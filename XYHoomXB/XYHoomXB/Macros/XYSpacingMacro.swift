//
//  XYSpacingMacro.swift
//  XYHoomXB
//
//  Created by HXB-xiaoYang on 2018/6/6.
//  Copyright © 2018年 VansXY. All rights reserved.
//

import Foundation
import UIKit

let kScreenWidth = UIScreen.main.bounds.size.width
let kScreenHeight = UIScreen.main.bounds.size.height

let isiPhoneX = kScreenWidth == 375.0 && kScreenHeight == 812.0 ? true : false
let kStatusBar = isiPhoneX ? 44.0 : 24.0
let kNavigationBarHeight = isiPhoneX ? 84.0 : 64.0
let kTabbarHeight = isiPhoneX ? 83.0 : 49.0

