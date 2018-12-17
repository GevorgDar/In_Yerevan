//
//  Date+String.swift
//  In Yerevan
//
//  Created by Davit Ghushchyan on 12/17/18.
//  Copyright © 2018 com.inYerevan. All rights reserved.
//

import Foundation

extension Date {
    
    // return tuple of Date as (YYYY, MMM, DD)
    func dateToString() -> (year: String, month: String, day: String) {
        let _ = "2018-12-16 10:11:16 PM +0000"
        let stringDate = description
        let year = stringDate.components(separatedBy: "-").first!
        var month = stringDate.components(separatedBy: "-")[1]
        let day = stringDate.components(separatedBy: "-").last!.components(separatedBy: " ").first!
        //replace digit with MMM
        switch month {
        case "1": 
            month = "Jan"
        case "2":
            month = "Feb"
        case "3":
            month = "Mar"
        case "4":
            month = "Apr"
        case "5":
            month = "May"
        case "6":
            month = "Jun"
        case "7":
            month = "Jul"
        case "8":
            month = "Aug"
        case "9":
            month = "Sep"
        case "10":
            month = "Ouc"
        case "11":
            month = "Nov"
        case "12":
            month = "Dec"
        default:
            break
        }
        
        return (year, month, day)
    }
}
