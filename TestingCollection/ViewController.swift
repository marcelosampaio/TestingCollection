//
//  ViewController.swift
//  TestingCollection
//
//  Created by Marcelo on 9/16/17.
//  Copyright © 2017 MAS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    // MARK: - Outlets

    @IBOutlet weak var collectionView: UICollectionView!
    
    
    // MARK: - Properties
    let cellIdentifier = "Cell"
    let images = [UIImage(named:"card"),UIImage(named:"card"),UIImage(named:"card"),UIImage(named:"card"),UIImage(named:"card"),UIImage(named:"card"),UIImage(named:"card"),UIImage(named:"card"),UIImage(named:"card"),UIImage(named:"card"),UIImage(named:"card"),UIImage(named:"card"),UIImage(named:"card"),UIImage(named:"card"),UIImage(named:"card"),UIImage(named:"card")]
    

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    // MARK: - UICollectionView Delegate
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! CustomCollectionViewCell
        
        
        cell.cellImageView.image = images[indexPath.row]
        
        return cell
    }
    

    
    
    

}

