//
//  ControllInReserveViewController.swift
//  In Yerevan
//
//  Created by HarutMikichyan on 12/17/18.
//  Copyright © 2018 com.inYerevan. All rights reserved.
//

import UIKit

class ControllInReserveViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var reserveMainImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        tableView.register(UINib(nibName: "ReserveCategoryTableViewCell", bundle: nil), forCellReuseIdentifier: "ReserveCategoryTableViewCell")
    }
}

extension ControllInReserveViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        switch indexPath.row {
//        case 0:
//            return 220
//        default:
//            return 150
//        }
//        //        if indexPath.row == 0 {
//        //            return 220
//        //        } else {
//        //            return 150
//        //        }
//    }
//
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellWithCollectionView"
            , for: indexPath) as! TableViewCellWithCollectionView
        return cell
        
    }
    //        switch indexPath.row {
    //        case 1:
    //            let cell = tableView.dequeueReusableCell(withIdentifier: "cellReserveCategoryTableViewCell", for: indexPath)
    //            return cell
    ////        case 2:
    ////            let cell = tableView.dequeueReusableCell(withIdentifier: "ReserveTopHotelCollectionView", for: indexPath)
    ////            return cell
    //        default:
    //            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! UITableViewCell
    //            return cell
}
//        if indexPath.row == 0 {
//
//        } else {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//            cell.textLabel!.text = "dcfvgbhjn"
//            return cell
//        }

