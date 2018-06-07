//
//  XYHomeTableViewCell.swift
//  XYHoomXB
//
//  Created by HXB-xiaoYang on 2018/6/7.
//  Copyright © 2018年 VansXY. All rights reserved.
//

import UIKit

class XYHomeTableViewCell: UITableViewCell {

    // MARK: - Public Property
    static let identifier = "XYHomeTableViewCell"
    static let cellHeight: CGFloat = 59
    
//    var cellModel = <#value#>
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = UIColor.cyan
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUI() {
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder :) has not been implemented")
    }

}
