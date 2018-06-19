//
//  XYCyclePagerTransformLayout.swift
//  XYHoomXB
//
//  Created by HXB-xiaoYang on 2018/6/8.
//  Copyright © 2018年 VansXY. All rights reserved.
//

import UIKit

//protocol XYCyclePagerTransformLayoutDelegate {
//    /// initialize layout attributes
//    func pagerViewTransform_initializeTransform(Layout:XYCyclePagerViewLayout, attributes: UICollectionViewLayoutAttributes)
//
//    /// apply layout attributes
//    func pagerViewTransform_applyTransform(Layout:XYCyclePagerViewLayout, attributes: UICollectionViewLayoutAttributes)
//}

class XYCyclePagerTransformLayout: UICollectionViewFlowLayout {
    
    override init() {
        super.init()
        /// 滚动方向
        scrollDirection = .horizontal
        /// //尺寸
        itemSize = (collectionView?.bounds.size)!
        minimumLineSpacing = 0
        minimumInteritemSpacing = 0
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
