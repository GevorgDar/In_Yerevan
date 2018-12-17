//
//  EventCategoryCollectionViewCell.swift
//  In Yerevan
//
//  Created by Davit Ghushchyan on 12/16/18.
//  Copyright © 2018 com.inYerevan. All rights reserved.
//

import UIKit

class EventCategoryCollectionViewCell: UICollectionViewCell {
    
    static let id = "EventCategoryCollectionViewCell"

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 12
        layer.masksToBounds = true
        
    }
    
    func prepareCellWith(label: String, background: UIImage) {
        backgroundImageView.image = background
        self.label.text = label
    } 
    
}
