//
//  MainReserveViewController.swift
//  In Yerevan
//
//  Created by HarutMikichyan on 12/18/18.
//  Copyright © 2018 com.inYerevan. All rights reserved.
//

import UIKit

class MainReserveViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "MainImageTableViewCell", bundle: nil), forCellReuseIdentifier: "MainImageTableViewCell")
        tableView.register(UINib(nibName: "CategoryTableViewCell", bundle: nil), forCellReuseIdentifier: "CategoryTableViewCell")
    }
}

extension MainReserveViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 260
        } else if indexPath.row == 1 {
            return 260
        } else {
            return 200
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MainImageTableViewCell", for: indexPath) as! MainImageTableViewCell
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryTableViewCell", for: indexPath) as! CategoryTableViewCell
            return cell
        } else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: TopHotelTableViewCell.id, for: indexPath) as! TopHotelTableViewCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: TopRestaurantsTableViewCell.id, for: indexPath)
            return cell
        }
    }
}
