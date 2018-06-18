//
//  GridLayout.swift
//  HorizontalScroll
//
//  Created by Joe on 6/14/18.
//  Copyright © 2018 Joe. All rights reserved.
//

import UIKit

class GridLayout: UICollectionViewFlowLayout {
    
    var numberOfColumns: Int = 1
    
    override init() {
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var itemSize: CGSize {
        get {
            let itemWidth: CGFloat = 200
            let itemHeight: CGFloat = 200
            return CGSize(width: itemWidth, height: itemHeight)
        } set {
            super.itemSize = newValue
        }
    }
    
    override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint {
        return proposedContentOffset
    }
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        
        var visibleLayoutAttributes = [UICollectionViewLayoutAttributes]()
        let itemCount = super.layoutAttributesForElements(in: rect)
        
        // Loop through the cache and look for items in the rect
        for attributes in itemCount! {
            if attributes.frame.intersects(rect) {
                visibleLayoutAttributes.append(attributes)
                
                let itemCount = collectionView?.dataSource?.collectionView(collectionView!, numberOfItemsInSection: attributes.indexPath.section)
                
                if (itemCount! % 2) == 1 && attributes.indexPath.item == itemCount! - 1 {
                    let originalFrame = attributes.frame
                    
                    attributes.frame = CGRect(x: ((collectionView?.bounds.size.width)!/2) - (originalFrame.size.width/2), y: originalFrame.origin.y, width: originalFrame.size.width, height: originalFrame.size.height)
                }
            }
        }
        
        return visibleLayoutAttributes
    }
    
}










