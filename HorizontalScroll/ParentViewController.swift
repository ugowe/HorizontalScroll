//
//  ParentViewController.swift
//  HorizontalScroll
//
//  Created by Joe on 6/19/18.
//  Copyright © 2018 Joe. All rights reserved.
//

import UIKit

class ParentViewController: UIViewController {

	@IBOutlet weak var testView: ImageCustomizationView!
	
	
	override func viewDidLoad() {
        super.viewDidLoad()

//		setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	func setup() {
		testView.titleLabel.text = "Select Green Screen"
		testView.contentView.backgroundColor = .green
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
