//
//  EventViewController.swift
//  In Yerevan
//
//  Created by Davit Ghushchyan on 12/17/18.
//  Copyright © 2018 com.inYerevan. All rights reserved.
//

import UIKit
import MapKit

class EventViewController: UIViewController {
static let id = "EventViewController"
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var detailsTextView: UITextView!
    @IBOutlet weak var visitorsLabel: UILabel!
    
    var incommingData = (date: Date(), eventTitle: "as ", eventDesctiption: "", visitorCount: 3)
    var imagesForEvent = [#imageLiteral(resourceName: "thisMonth"),#imageLiteral(resourceName: "City"),#imageLiteral(resourceName: "Technology"),#imageLiteral(resourceName: "thisWeek"),#imageLiteral(resourceName: "Cinema")]
    override func viewDidLoad() {
        super.viewDidLoad()
        let dateTuple = incommingData.date.dateToString()
        dayLabel.text = dateTuple.day
        monthLabel.text = dateTuple.month
        title = incommingData.eventTitle
        visitorsLabel.text = "Visitors: \(incommingData.visitorCount)"
        detailsTextView.text = incommingData.eventDesctiption
        detailsTextView.isEditable = false
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addToCalendarAction() {
        // TODO: - functionality to interact with native Calendar
    
    }
    
    func prepareViewController(date: Date, eventTitle: String, eventDesctiption: String, visitorCount: Int) {
        incommingData.date = date
        incommingData.eventTitle = eventTitle
        incommingData.eventDesctiption = eventDesctiption
        incommingData.visitorCount = visitorCount
    }

}

extension EventViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return imagesForEvent.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EventPictureCollectionViewCell.id, for: indexPath) as! EventPictureCollectionViewCell
        cell.prepareCellWith(background: imagesForEvent[indexPath.row])
        return cell
    }
    
    
    
}

extension EventViewController: MKMapViewDelegate {
    
}
