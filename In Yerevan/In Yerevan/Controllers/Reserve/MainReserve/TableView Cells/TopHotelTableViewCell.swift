//
//  TopHotelTableViewCell.swift
//  In Yerevan
//
//  Created by HarutMikichyan on 12/18/18.
//  Copyright © 2018 com.inYerevan. All rights reserved.
//

import UIKit

class TopHotelTableViewCell: UITableViewCell {
    
    static let id = "TopHotelTableViewCell"
    
    @IBOutlet weak var topCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //TODO: -- senc
//        topCollectionView.delegate = self as! UICollectionViewDelegate
        topCollectionView.dataSource = self
    }
}

extension TopHotelTableViewCell: UITableViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TopHotelCollectionViewCell.id, for: indexPath) as! TopHotelCollectionViewCell
        return cell
    }
}
