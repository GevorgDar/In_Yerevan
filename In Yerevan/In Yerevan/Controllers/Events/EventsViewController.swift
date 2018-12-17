//
//  EventsViewController.swift
//  In Yerevan
//
//  Created by Davit Ghushchyan on 12/16/18.
//  Copyright © 2018 com.inYerevan. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController {
    static let id = "EventsViewController"
    
    var events = [(title: "New Year", date: Date(), image: #imageLiteral(resourceName: "Cinema")),
                  (title: "Hide And Seek", date: Date(), image: #imageLiteral(resourceName: "today")),
                  (title: "Pool Party", date: Date(), image: #imageLiteral(resourceName: "thisWeek")),
                  (title: "TechnoPark  with Text 2 line or more if needed", date: Date(), image: #imageLiteral(resourceName: "Technology")),
                  (title: "City tour", date: Date(), image: #imageLiteral(resourceName: "City")),
                  ]
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Events"
        // Do any additional setup after loading the view.
    }
    

  
}

extension EventsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.bounds.height / 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: EventTableViewCell.id, for: indexPath) as! EventTableViewCell
        cell.prepareCellWith(title: events[indexPath.row].title,
                             background: events[indexPath.row].image,
                             date: events[indexPath.row].date)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: EventViewController.id) as! EventViewController
        
        vc.prepareViewController(date: events[indexPath.row].date,
                                 eventTitle: events[indexPath.row].title,
                                 eventDesctiption: "Here will be Discription passed from Event, so cute isn't it ? well design is so easy but it works only with static HARDCODE data, and I should prepare logic to fetch data vorm cloud services", visitorCount: Int(arc4random() % 4000))
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
