//
//  Upco
//  UpcomingEventViewController.swift
//  In Yerevan
//
//  Created by Davit Ghushchyan on 12/16/18.
//  Copyright © 2018 com.inYerevan. All rights reserved.
//

import UIKit

class UpcomingEventViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    
    private var timeGroup = ["today", "thisWeek", "thisMonth"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Main"
        // timeGroup = FetchCategories
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
}


extension UpcomingEventViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let height = tableView.bounds.height / 3
        return height
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UpcomingTableViewCell.id, for: indexPath) as! UpcomingTableViewCell
        cell.prepareCellWith(label: timeGroup[indexPath.row], background: #imageLiteral(resourceName: "Activity"))
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return timeGroup.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: EventCategoiresViewController.id) {
            navigationController?.pushViewController(vc, animated: true)
        } else {
            fatalError()
        }
    }
}
