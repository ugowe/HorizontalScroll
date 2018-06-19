//
//  ImageCustomizationViewController.swift
//  HorizontalScroll
//
//  Created by Joe on 6/19/18.
//  Copyright © 2018 Joe. All rights reserved.
//

import UIKit
import Foundation

class ImageCustomizationView: UIView {
	
	@IBOutlet weak var contentView: UIView!
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var backButtonLabel: UIButton!
	@IBOutlet weak var nextButtonLabel: UIButton!
	@IBOutlet weak var containerView: UIView!
	

	override init(frame: CGRect) {
		super.init(frame: frame)
		
		commonInit()
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		
		commonInit()
	}
	
	private func commonInit() {
		Bundle.main.loadNibNamed("ImageCustomizationView", owner: self, options: nil)
		addSubview(contentView)
		contentView.frame = self.bounds
		contentView.autoresizingMask = [.flexibleHeight, .flexibleHeight]
		
	}
	

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
