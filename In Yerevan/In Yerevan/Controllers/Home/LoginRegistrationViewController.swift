//
//  LoginRegistrationViewController.swift
//  In Yerevan
//
//  Created by Gev Darbinyan on 17/12/2018.
//  Copyright © 2018 com.inYerevan. All rights reserved.
//

import UIKit

class LoginRegistrationViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
    
    @IBAction func segmentControlChanged(_ sender: UISegmentedControl) {
        
        switch sender.numberOfSegments {
        case 0:
            break
        case 1:
            break
        case 2:
            break
        default:
            break
        }
    }
}
