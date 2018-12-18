//
//  TableViewCellWithCollectionView.swift
//  In Yerevan
//
//  Created by HarutMikichyan on 12/18/18.
//  Copyright © 2018 com.inYerevan. All rights reserved.
//

import UIKit

class TableViewCellWithCollectionView: UITableViewCell {
static let id = "TableViewCellWithCollectionView"
    @IBOutlet weak var collectionView: UICollectionView!
    var restourants = ["asd", "asdf"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
        collectionView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


extension TableViewCellWithCollectionView: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return restourants.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TopRestourantsCollectionViewCell.id, for: indexPath) as! TopRestourantsCollectionViewCell
        cell.imLabelna.text = restourants[indexPath.row]
        return cell
    }
    
    
    
}

