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
    static let cellHeight: CGFloat = 273
    
    private let recommendImageView = UIImageView()
    private let titleLabel = UILabel()
    private let tagLabel = UILabel()
    private let expectAnnualizedRatesLabel = UILabel()
    private let expectAnnualizedRatesTitleLabel = UILabel()
    private let investmentPeriodTitleLabel = UILabel()
    private let purchaseButton = UIButton(type: .custom)
    private let icon = UIImageView()
    
    private let discountCouponImageView = UIImageView()
    private let moneyOffCouponImageView = UIImageView()
    private let minRegisterAmountLabel = UILabel()
    private let planTitleLabel = UILabel()
    private let leftLine = UIView()
    private let rightLine = UIView()
    private let tableRowView = UIView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = UIColor.white
        setUI()
        setHomeModel()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setHomeModel() {
        titleLabel.text = "红利智投"
        tagLabel.text = "圣诞节活动"
        expectAnnualizedRatesTitleLabel.text = "8.0%"
        investmentPeriodTitleLabel.text = "12个月"
        planTitleLabel.text = "收益复投"
        minRegisterAmountLabel.text = "10000元起投"
        purchaseButton.setTitle("立即加入", for: .normal)
    }
    
    func setUI() {
        titleLabel.textColor = XYColor.important
        titleLabel.font = XYFont.firstClass
        titleLabel.textAlignment = .center
        
        tagLabel.textColor = XYColor.important
        tagLabel.font = XYFont.light
        tagLabel.textAlignment = .right
        tagLabel.isHidden = true
        
        expectAnnualizedRatesTitleLabel.text = "--"
        expectAnnualizedRatesTitleLabel.textColor = UIColor(displayP3Red: 253.0/255.0, green: 54.0/255.0, blue: 54.0/255.0, alpha: 1)
        expectAnnualizedRatesTitleLabel.font = XYFont.title_37
        expectAnnualizedRatesTitleLabel.textAlignment = .center
        
        expectAnnualizedRatesLabel.text = "平均历史年化收益";
        expectAnnualizedRatesLabel.textColor = XYColor.light
        expectAnnualizedRatesLabel.font = XYFont.light
        expectAnnualizedRatesLabel.textAlignment = .center
        
        investmentPeriodTitleLabel.text = "月期"
        investmentPeriodTitleLabel.textColor = XYColor.important
        investmentPeriodTitleLabel.font = XYFont.transaction
        investmentPeriodTitleLabel.textAlignment = .center
        
        planTitleLabel.textColor = XYColor.important
        planTitleLabel.font = XYFont.transaction
        planTitleLabel.textAlignment = .center
        
        minRegisterAmountLabel.textColor = XYColor.important
        minRegisterAmountLabel.font = XYFont.transaction
        minRegisterAmountLabel.textAlignment = .center
        
        icon.image = UIImage(named: "home_package")
        icon.contentMode = .scaleAspectFit
        
        recommendImageView.image = UIImage(named: "Home_Recommend")
        recommendImageView.contentMode = .scaleAspectFit
        recommendImageView.isHidden = true
        
        leftLine.backgroundColor = UIColor(displayP3Red: 192.0/255.0, green: 192.0/255.0, blue: 192.0/255.0, alpha: 1)
        rightLine.backgroundColor = UIColor(displayP3Red: 192.0/255.0, green: 192.0/255.0, blue: 192.0/255.0, alpha: 1)
        
        discountCouponImageView.image = UIImage(named: "Home_DiscountCoupon")
        discountCouponImageView.contentMode = .scaleAspectFit
        
        moneyOffCouponImageView.image = UIImage(named: "Home_MoneyOffCoupon")
        moneyOffCouponImageView.contentMode = .scaleAspectFit
        
        purchaseButton.titleLabel?.font = XYFont.important
        purchaseButton.setTitleColor(UIColor.white, for: .normal)
        purchaseButton.backgroundColor = UIColor(displayP3Red: 253.0/255.0, green: 54.0/255.0, blue: 54.0/255.0, alpha: 1)
        purchaseButton.titleLabel?.font = XYFont.navTitle
        purchaseButton.isEnabled = false
        purchaseButton.layer.borderWidth = kBoardWidth
        purchaseButton.layer.borderColor = UIColor(displayP3Red: 253.0/255.0, green: 54.0/255.0, blue: 54.0/255.0, alpha: 1).cgColor
        purchaseButton.layer.cornerRadius = 4.0
        purchaseButton.layer.masksToBounds = true
        
        tableRowView.backgroundColor = XYColor.background
        
        setFrame()
    }
    
    private func setFrame() {
        tagLabel.frame = CGRect(x: kScreenWidth - 115, y: 11, width: 100, height: 12.5)
        titleLabel.frame = CGRect(x: 0, y: tagLabel.bottom + 25, width: kScreenWidth, height: 16)
        moneyOffCouponImageView.frame = CGRect(x: titleLabel.right + 5, y: titleLabel.top, width: 30, height: 14)
        discountCouponImageView.frame = CGRect(x: moneyOffCouponImageView.right + 5, y: titleLabel.top, width: 30, height: 14)
        icon.frame = CGRect(x: tagLabel.left - 17.5, y: tagLabel.top, width: 12.5, height: 12.5)
        recommendImageView.frame = CGRect(x: 25, y: -2, width: 46, height: 46.5)
        expectAnnualizedRatesTitleLabel.frame = CGRect(x: 0, y: titleLabel.bottom + 15, width: kScreenWidth, height: 40)
        expectAnnualizedRatesLabel.frame = CGRect(x: 0, y: expectAnnualizedRatesTitleLabel.bottom + 10, width: kScreenWidth, height: 12)
        investmentPeriodTitleLabel.frame = CGRect(x: 0, y: expectAnnualizedRatesLabel.bottom + 25, width: kScreenWidth / 3, height: 14)
        minRegisterAmountLabel.frame = CGRect(x: kScreenWidth / 3, y: investmentPeriodTitleLabel.top, width: kScreenWidth / 3, height: 14)
        planTitleLabel.frame = CGRect(x: kScreenWidth * 2 / 3, y: investmentPeriodTitleLabel.top, width: kScreenWidth / 3, height: 14)
        leftLine.frame = CGRect(x: kScreenWidth / 3, y: investmentPeriodTitleLabel.top + 1, width: kLineWidth, height: 12)
        rightLine.frame = CGRect(x: kScreenWidth * 2 / 3, y: investmentPeriodTitleLabel.top + 1, width: kLineWidth, height: 12)
        purchaseButton.frame = CGRect(x: 37.5, y: investmentPeriodTitleLabel.bottom + 20, width: kScreenWidth - 75, height: 38)
        tableRowView.frame = CGRect(x: 0, y: 263, width: kScreenWidth, height: 10)
        
        addToView()
    }
    
    private func addToView() {
        contentView.addSubview(recommendImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(tagLabel)
        contentView.addSubview(expectAnnualizedRatesTitleLabel)
        contentView.addSubview(expectAnnualizedRatesLabel)
        contentView.addSubview(investmentPeriodTitleLabel)
        contentView.addSubview(minRegisterAmountLabel)
        contentView.addSubview(planTitleLabel)
        contentView.addSubview(leftLine)
        contentView.addSubview(rightLine)
        contentView.addSubview(purchaseButton)
        contentView.addSubview(icon)
        contentView.addSubview(discountCouponImageView)
        contentView.addSubview(moneyOffCouponImageView)
        contentView.addSubview(tableRowView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder :) has not been implemented")
    }

}
