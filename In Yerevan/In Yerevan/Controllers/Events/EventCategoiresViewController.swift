//
//  EventCategoiresViewController.swift
//  In Yerevan
//
//  Created by Davit Ghushchyan on 12/16/18.
//  Copyright © 2018 com.inYerevan. All rights reserved.
//

import UIKit

class EventCategoiresViewController: UIViewController {
    static let id = "EventCategoiresViewController"
    @IBOutlet weak var collectionView: UICollectionView!
    let eventCategories = ["City", "Musical", "Activity","Trades", "Cinema", "Technology"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false 
        title = "Categories"
    }

}

extension EventCategoiresViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eventCategories.count
    }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let count: CGFloat = 2
        let width: CGFloat =  collectionView.bounds.width / count - 16
        var height: CGFloat = collectionView.bounds.width / count - 16
        if indexPath.row == 0 {
            height =  height + height / 2
        }
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EventCategoryCollectionViewCell.id, for: indexPath) as! EventCategoryCollectionViewCell
        cell.prepareCellWith(label: eventCategories[indexPath.row], background: UIImage(named: eventCategories[indexPath.row])!)
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: EventsViewController.id) as! EventsViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
