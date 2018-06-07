//
//  XYTableView.swift
//  XYHoomXB
//
//  Created by HXB-xiaoYang on 2018/6/7.
//  Copyright © 2018年 VansXY. All rights reserved.
//

import UIKit

class XYTableView: UITableView {

    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        separatorStyle = .none
        if #available(iOS 11.0, *) {
            contentInsetAdjustmentBehavior = .never
            estimatedRowHeight = 0;
            estimatedSectionHeaderHeight = 0;
            estimatedSectionFooterHeight = 0;
        }
        
    }
    
    /// 遍历构造TableView
    convenience init(frame: CGRect = .zero, style: UITableView.Style = .grouped, dataSource: UITableViewDataSource?, delegate: UITableViewDelegate?) {
        self.init(frame: frame, style: style)
        self.dataSource = dataSource
        self.delegate = delegate
        separatorStyle = .none
        backgroundColor = XYColor.background
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    


}
