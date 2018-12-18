//
//  ReserveTopHotelCollectionViewCell.swift
//  In Yerevan
//
//  Created by HarutMikichyan on 12/18/18.
//  Copyright © 2018 com.inYerevan. All rights reserved.
//

import UIKit

class ReserveTopHotelCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var topHotelImage: UIImageView!
    @IBOutlet weak var topHotelName: UILabel!
    
}

extension ReserveTopHotelCollectionViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellTopCollectionView = collectionView.dequeueReusableCell(withReuseIdentifier: "cellTopCollectionView", for: indexPath)
        return cellTopCollectionView
    }
}
