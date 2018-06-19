//
//  XYCycleCollectionViewCell.swift
//  XYHoomXB
//
//  Created by HXB-xiaoYang on 2018/6/8.
//  Copyright © 2018年 VansXY. All rights reserved.
//

import UIKit

//图片的模式
enum imageContentMode {
    case scaleAspectFill
    case scaleAspectFit
}

class XYCycleCollectionViewCell: UICollectionViewCell {
    
    var bannerModel = XYHomeBannerModel()
    
    lazy var imageView = UIImageView(frame: self.bounds)
    
    var imageMode : imageContentMode? {
        didSet {
            switch imageMode ?? .scaleAspectFill {
            case .scaleAspectFill:
                imageView.contentMode = .scaleAspectFill
                
            case .scaleAspectFit:
                imageView.contentMode = .scaleAspectFit
            }
        }
    }
    
    var imageUrlString : String? {
        didSet {
            /// 网络照片
            if (imageUrlString?.hasPrefix("http"))! {
//                let imageUrl = NSURL(string: imageUrlString)
//                imageView.
            } else { /// 本地图片
                
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        imageView.clipsToBounds = true
        contentView.addSubview(imageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
