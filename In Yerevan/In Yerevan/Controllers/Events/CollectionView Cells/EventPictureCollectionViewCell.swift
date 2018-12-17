//
//  EventPictureCollectionViewCell.swift
//  In Yerevan
//
//  Created by Davit Ghushchyan on 12/17/18.
//  Copyright © 2018 com.inYerevan. All rights reserved.
//

import UIKit

class EventPictureCollectionViewCell: UICollectionViewCell {
    static let id = "EventPictureCollectionViewCell"
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func prepareCellWith(background: UIImage) {
        backgroundImageView.image = background
    } 
    
}
