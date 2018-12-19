//
//  TopRestaurantsTableViewCell.swift
//  In Yerevan
//
//  Created by HarutMikichyan on 12/18/18.
//  Copyright © 2018 com.inYerevan. All rights reserved.
//

import UIKit

class TopRestaurantsTableViewCell: UITableViewCell {

    static let id = "TopRestaurantsTableViewCell"
    
    @IBOutlet weak var topRestaurantCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        topRestaurantCollectionView.isHidden = true
        topRestaurantCollectionView.delegate = self
        topRestaurantCollectionView.dataSource = self
    }
}

extension TopRestaurantsTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TopRestaurantCollectionViewCell.id, for: indexPath)
        return cell
    }
}
