//
//  GreenScreenViewController.swift
//  HorizontalScroll
//
//  Created by Joe on 6/19/18.
//  Copyright © 2018 Joe. All rights reserved.
//

import Foundation
import UIKit

class GreenScreenViewController: CameraViewController {
	
	
	override func viewDidLoad() {
		self.navigationController?.setNavigationBarHidden(true, animated: true)
		
//		self.titleLabel.text = "Select Green Screen"
		self.view.backgroundColor = .green

		
	}
	
	@IBAction func unwindToGreenScreen(segue: UIStoryboardSegue) {}
	
}
