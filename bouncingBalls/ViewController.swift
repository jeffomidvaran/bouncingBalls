//
//  ViewController.swift
//  bouncingBalls
//
//  Created by jeffomidvaran on 4/1/20.
//  Copyright © 2020 jeffomidvaran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var ballViews: [Ball]!
    private let colorArray: [UIColor] = [.green, .blue, .red, .cyan, .magenta,
                                         .purple, .yellow, .black, .brown]

    lazy var animator = UIDynamicAnimator(referenceView: view)
    lazy var ballBehvior = BallBehavior(in: animator)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for ball in ballViews {
            ball.color = colorArray[Int.random(in: 0..<colorArray.count)]
            ballBehvior.addItem(ball)
        }
    }

}

