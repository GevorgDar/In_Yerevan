//
//  GradientView.swift
//  In Yerevan
//
//  Created by Davit Ghushchyan on 12/16/18.
//  Copyright © 2018 com.inYerevan. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    
    @IBInspectable
    var colorFrom: UIColor?
    @IBInspectable
    var colorTo: UIColor?
    
    
    override func prepareForInterfaceBuilder() {
        makeGradient()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        makeGradient()
    }
    
    
    private func makeGradient() {
//        alpha = 0.9
        layer.cornerRadius = 14
        layer.masksToBounds = true
        backgroundColor = UIColor.clear
        let color1 =  colorFrom ?? UIColor.clear
        let color2 = colorTo ?? UIColor.clear
        let subLayer = CAGradientLayer()
        subLayer.colors = [color1.cgColor, color2.cgColor]
        subLayer.startPoint = CGPoint(x: 0.0, y: 0)
        subLayer.endPoint = CGPoint(x: 0.0, y: 1)
        subLayer.frame = bounds
        layer.insertSublayer(subLayer, at: 0)
    }
}
