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
		
		
	}
	
	override func viewDidAppear(_ animated: Bool) {
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
    
	@IBAction func backButtonTapped(_ sender: Any) {
		self.navigationController?.popViewController(animated: true)
	}
	
    @IBAction func nextButtonTapped(_ sender: Any) {
		
		let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
//		let greenScreenVC = storyboard.instantiateInitialViewController()
		
		let greenScreenVC = GreenScreenViewController()
		
		self.navigationController?.pushViewController(greenScreenVC, animated: true)
    }
	

    


}

