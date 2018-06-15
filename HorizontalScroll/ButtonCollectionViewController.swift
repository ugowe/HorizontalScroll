//
//  ButtonCollectionViewController.swift
//  HorizontalScroll
//
//  Created by Joe on 6/14/18.
//  Copyright © 2018 Joe. All rights reserved.
//

import UIKit
import Foundation


class ButtonCollectionViewController: UICollectionViewController {

	var buttonCount: Int?
	
	private let reuseIdentifier = "ButtonCell"
	private let itemsPerRow: CGFloat = 2
	

	var listLayout: ListLayout!
	var gridLayout: GridLayout!
	
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
		

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
		
		
		self.collectionView!.collectionViewLayout = self.getLayout()
//		listLayout = ListLayout()
//		collectionView?.collectionViewLayout = listLayout
//		collectionView?.reloadData()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {

        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		
		return buttonCount!
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        cell.backgroundColor = .orange
		
    
        return cell
    }
	
	func getLayout() -> UICollectionViewLayout {
		let layout:UICollectionViewFlowLayout =  GridLayout()
		

		layout.itemSize = CGSize(width: 200, height: 200)
		layout.sectionInset = UIEdgeInsets(top: 150, left: 150, bottom: 50, right: 150)
		layout.minimumLineSpacing = 50
		layout.minimumInteritemSpacing = 25
		layout.scrollDirection = .vertical
		return layout
		
	}

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */
}





