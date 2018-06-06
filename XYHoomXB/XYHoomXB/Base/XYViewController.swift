//
//  XYViewController.swift
//  XYHoomXB
//
//  Created by HXB-xiaoYang on 2018/6/5.
//  Copyright © 2018年 VansXY. All rights reserved.
//

import UIKit

class XYViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if isiPhoneX {
            tabBarController?.tabBar.isHidden = true
            tabBarController?.tabBar.height = CGFloat(kTabbarHeight)
        }
    }

}
