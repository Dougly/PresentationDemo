//
//  ViewController.swift
//  DemoForSlider
//
//  Created by Douglas Galante on 10/28/16.
//  Copyright © 2016 Douglas Galante. All rights reserved.
//

import UIKit
import CircularSlider

class ViewController: UIViewController, CircularSliderDelegate {
    
    @IBOutlet weak var circleSlider: CircularSlider!
    @IBOutlet weak var redBackground: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.redBackground.alpha = 0
        circleSlider.delegate = self
    }
    
    func circularSlider(_ circularSlider: CircularSlider, valueForValue value: Float) -> Float {
        self.redBackground.alpha = CGFloat(circleSlider.value)
        return value
    }
    
    @IBAction func movedSlider(_ sender: UISlider) {
        self.redBackground.alpha = CGFloat(sender.value)
    }
    
}

