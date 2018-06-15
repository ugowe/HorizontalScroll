//
//  StartViewController.swift
//  HorizontalScroll
//
//  Created by Joe on 6/14/18.
//  Copyright © 2018 Joe. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

	@IBOutlet weak var numberTextField: UITextField!
	
	override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

	// MARK: - Navigation
	
	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "toButtonView", let nextScene = segue.destination as? ButtonCollectionViewController {
			print("The number is \(Int(numberTextField.text!))")
			nextScene.buttonCount = Int(numberTextField.text!)
			
		}
	}

	@IBAction func startButtonTapped(_ sender: Any) {
		self.performSegue(withIdentifier: "toButtonView", sender: self)
	}


}
