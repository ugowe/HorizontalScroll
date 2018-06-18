//
//  ViewController.swift
//  HorizontalScroll
//
//  Created by Joe on 6/13/18.
//  Copyright © 2018 Joe. All rights reserved.
//

import UIKit

class CameraViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nextButtonLabel: UIButton!
    @IBOutlet weak var backButtonLabel: UIButton!
    
    override func viewDidLoad() {
		super.viewDidLoad()
		
        self.navigationController?.setNavigationBarHidden(true, animated: true)
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
    
    
    @IBAction func nextButtonTapped(_ sender: Any) {
    }
    
    


}

