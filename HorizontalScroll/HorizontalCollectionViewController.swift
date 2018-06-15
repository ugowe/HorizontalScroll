//
//  HorizontalCollectionViewController.swift
//  HorizontalScroll
//
//  Created by Joe on 6/13/18.
//  Copyright © 2018 Joe. All rights reserved.
//

import UIKit

class HorizontalCollectionViewController: UICollectionViewController {
	
	private var indexOfCellBeforeDragging = 0
	private var collectionViewFlowLayout: UICollectionViewFlowLayout {
		return collectionViewLayout as! UICollectionViewFlowLayout
	}

    override func viewDidLoad() {
        super.viewDidLoad()

		collectionViewFlowLayout.minimumLineSpacing = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		
		// configureCollectionViewLayoutItemSize()
	}
	
	// This feels unnecessary
	func calculateSectionInset() -> CGFloat {
		// should be overridden
		return 100
	}
	
	// Set the cell size and the insets of the collectionView, so that only item is centered and the left and right items peek from either side
	private func configureCollectionViewLayoutItemSize() {
		let inset: CGFloat = calculateSectionInset()
		collectionViewFlowLayout.sectionInset = UIEdgeInsets(top: 0, left: inset, bottom: 0, right: inset)
		
		// Without any modifiers, the collectionViewCell w & h grows to the size of the window
		let itemSizeWidth = collectionViewFlowLayout.collectionView!.frame.size.width - (inset * 2)
		let itemSizeHeight = collectionViewFlowLayout.collectionView!.frame.size.height
		collectionViewFlowLayout.itemSize = CGSize(width: itemSizeWidth, height: itemSizeHeight)
	}
	
	// Calculate the major cell index (the cell that we need to snap to)
	private func indexOfCell() -> Int {
		// 1) First get the item width
		let itemWidth = collectionViewFlowLayout.itemSize.width
		// 2) Divide the collectionView's x.contentOffset /by/ the itemWidth to bring the focused cell completely into view
		let proportionalOffset = collectionViewLayout.collectionView!.contentOffset.x / itemWidth
		return Int(round(proportionalOffset))
	}
	
	// Tells the delegate when the scroll view is about to start scrolling the content.
	override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
		indexOfCellBeforeDragging = indexOfCell()
	}

	override func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
		// Stop scrollView sliding:
//		targetContentOffset.pointee = scrollView.contentOffset
//		
//		// Calculate where scrollView should snap to:
//		let indexOfCell = self.indexOfCell()
//		
//		// Calculate conditions
//		
//		// Ask your data source object for the number of items in the specified section
//		let dataSourceCount = collectionView(collectionView!, numberOfItemsInSection: 0)
//		let swipeVelocityThreshold: CGFloat = 0.5
//		let hasEnoughVelocityToSlideToNextCell = indexOfCellBeforeDragging + 1 < dataSourceCount && velocity.x > swipeVelocityThreshold
//		let hasEnoughVelocityToSlideToPreviousCell = indexOfCellBeforeDragging - 1 >= 0 && velocity.x < -swipeVelocityThreshold
//		let doCellIndexesMatch = indexOfCell == indexOfCellBeforeDragging
//		let didUseSwipeToSkipCell = doCellIndexesMatch && (hasEnoughVelocityToSlideToNextCell || hasEnoughVelocityToSlideToPreviousCell)
//		
//		if didUseSwipeToSkipCell {
//			let snapToIndex = indexOfCellBeforeDragging + (hasEnoughVelocityToSlideToNextCell ? 1 : -1)
//			let toValue = collectionViewFlowLayout.itemSize.width * CGFloat(snapToIndex)
//			
//			// Damping equal 1 => no oscillations => decay animation
//			UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: velocity.x, options: .allowUserInteraction, animations: {
//				scrollView.contentOffset = CGPoint(x: toValue, y: 0)
//				scrollView.layoutIfNeeded()
//			}, completion: nil)
//		} else {
//			let indexPath = IndexPath(row: indexOfCell, section: 0)
//			collectionViewLayout.collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
//		}
	}



}
