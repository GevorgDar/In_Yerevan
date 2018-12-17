//
//  EventTableViewCell.swift
//  In Yerevan
//
//  Created by Davit Ghushchyan on 12/17/18.
//  Copyright © 2018 com.inYerevan. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {
    static let id = "EventTableViewCell"
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundImageView.layer.cornerRadius = 12
        backgroundImageView.layer.masksToBounds = true
    }
    override func layoutSubviews() {    
        super.layoutSubviews()
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: -7, left: 0, bottom: -7, right: 0))
    }

    
    func prepareCellWith(title: String, background: UIImage, date: Date) {
        backgroundImageView.image = background
        titleLabel.text = title
        let dateTuple = date.dateToString()
        dayLabel.text = dateTuple.day
        monthLabel.text = dateTuple.month
    } 

    
}
