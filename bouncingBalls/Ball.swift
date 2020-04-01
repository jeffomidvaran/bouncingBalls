//
//  Ball.swift
//  bouncingBalls
//
//  Created by jeffomidvaran on 4/1/20.
//  Copyright © 2020 jeffomidvaran. All rights reserved.
//

import UIKit

@IBDesignable
class Ball: UIView {
    var color: UIColor = .blue {didSet{ setNeedsLayout(); setNeedsDisplay()}}
    
    override func draw(_ rect: CGRect) {
        self.backgroundColor = .clear
        let circle = UIBezierPath(ovalIn: rect)
        color.setFill()
        circle.fill()
    }
}
