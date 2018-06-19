//
//  XYTabBarController.swift
//  XYHoomXB
//
//  Created by HXB-xiaoYang on 2018/6/5.
//  Copyright © 2018年 VansXY. All rights reserved.
//

import UIKit

class XYTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.addChildControllers()
        
    }
    
    /// 创建子视图
    fileprivate func addChildControllers() {
        addVC(childViewController: HomeViewController(), title: "首页", imageName: "tabbar_home")
        addVC(childViewController: FinancingViewController(), title: "投资", imageName: "tabbar_investment")
        addVC(childViewController: MyViewController(), title: "我的", imageName: "tabbar_mine")
    }
    
    private func addVC(childViewController: XYViewController, title: String, imageName: String) {
        childViewController.title = title
        
        childViewController.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.red], for: UIControl.State.selected)
        childViewController.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.lightGray], for: UIControl.State.normal)
        
        childViewController.tabBarItem.image = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
        childViewController.tabBarItem.selectedImage = UIImage(named: imageName + "_selected")?.withRenderingMode(.alwaysOriginal)
        
        let naVC = XYNavigationController(rootViewController: childViewController)
        addChild(naVC)
    }
    
    private func hiddenTabbarLine() {
        let shadowImage = UIImageView(image: UIImage())
        shadowImage.frame = CGRect(x: 0, y: 0, width: 0, height: 10)
        
    }
}
