//
//  ViewController.swift
//  XYHoomXB
//
//  Created by HXB-xiaoYang on 2018/6/5.
//  Copyright © 2018年 VansXY. All rights reserved.
//

import UIKit
import SnapKit

class HomeViewController: XYViewController {
    
    
    lazy var tableView = XYTableView(dataSource: nil, delegate: nil)
    lazy var tableViewHead = XYHomeHeaderView(frame: .zero)
    lazy var tableViewFoot = XYHomeFooterView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setUI()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func setUI() {
        
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = XYColor.background
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(XYHomeTableViewCell.self, forCellReuseIdentifier: XYHomeTableViewCell.identifier)
        tableView.frame = CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight - CGFloat(kTabbarHeight))
        view.addSubview(tableView)
        
        tableViewHead.frame = CGRect(x: 0, y: 0, width: kScreenWidth, height: 270)
        tableViewHead.cycleView.delegate = self 
        tableView.tableHeaderView = tableViewHead
        
        tableViewFoot.frame = CGRect(x: 0, y: 0, width: kScreenWidth, height: 120)
        tableView.tableFooterView = tableViewFoot
    }
}

extension HomeViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: XYHomeTableViewCell.identifier, for: indexPath) as! XYHomeTableViewCell
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 273;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.0001
    }
    
}

extension HomeViewController : XYCycleViewDelegate {
    func cycleViewDidSelectedItemAtIndex(_ index: NSInteger) {
        print("你点击的是第\(index + 1)个item")
    }
}
