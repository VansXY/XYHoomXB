//
//  XYCyclePagerTransformLayout.swift
//  XYHoomXB
//
//  Created by HXB-xiaoYang on 2018/6/8.
//  Copyright © 2018年 VansXY. All rights reserved.
//

import UIKit

protocol XYCyclePagerTransformLayoutDelegate {
    /// initialize layout attributes
    func pagerViewTransform_initializeTransform(Layout:XYCyclePagerViewLayout, attributes: UICollectionViewLayoutAttributes)
    
    /// apply layout attributes
    func pagerViewTransform_applyTransform(Layout:XYCyclePagerViewLayout, attributes: UICollectionViewLayoutAttributes)
}

class XYCyclePagerTransformLayout: UICollectionViewFlowLayout {
    var layout = XYCyclePagerViewLayout()
    var delegate = XYCyclePagerTransformLayoutDelegate.self
    
    override init() {
        super.init()
        scrollDirection = .horizontal
        itemSize = layout.itemSize
        minimumLineSpacing = layout.itemSpacing
        minimumInteritemSpacing = layout.itemSpacing
        
        
    }
    // MARK: - layout
    
    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return layout.layoutType == XYCyclePagerTransformLayoutType.XYCyclePagerTransformLayoutNormal ? super.shouldInvalidateLayout(forBoundsChange: newBounds) : true
    }
    
//    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
//        <#code#>
//    }
    
//    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
//        let attributes = super.layoutAttributesForItem(at: indexPath)
//
//
//    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
