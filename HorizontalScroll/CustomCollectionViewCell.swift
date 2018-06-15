//
//  CustomCollectionViewCell.swift
//  HorizontalScroll
//
//  Created by Joe on 6/13/18.
//  Copyright © 2018 Joe. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
	
	@IBOutlet weak var backgroundBorderView: UIView!
	
	
	@IBOutlet weak var imageView: UIImageView!
	
	override var isSelected: Bool {
		didSet {
			if self.isSelected {
				self.backgroundBorderView.backgroundColor = .gray
				self.imageView.alpha = 0.5
			} else {
				self.backgroundBorderView.backgroundColor = .blue
				self.imageView.alpha = 1.0
			}
		}
	}
}
