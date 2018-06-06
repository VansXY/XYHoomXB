//
//  XYNavigationController.swift
//  XYHoomXB
//
//  Created by HXB-xiaoYang on 2018/6/5.
//  Copyright © 2018年 VansXY. All rights reserved.
//

import UIKit

class XYNavigationController: UINavigationController, UIGestureRecognizerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
        setFullScreenBackGesture()
        
    }

    private func setUI() {
        navigationBar.shadowImage = UIImage()
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if children.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return children.count != 1 && value(forKey: "_isTransitioning") as! Bool == false
    }
    
    func setFullScreenBackGesture() {
        let target = interactivePopGestureRecognizer?.delegate
        let sel = Selector(("handleNavigationTransition:"))
        let gesture = UIPanGestureRecognizer(target: target, action: sel)
        gesture.delegate = self
        view.addGestureRecognizer(gesture)
        interactivePopGestureRecognizer?.isEnabled = false
    }
    
    
}
