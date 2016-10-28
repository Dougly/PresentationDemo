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
    
    @IBOutlet weak var mySlider: CircularSlider!
    @IBOutlet weak var yellowBackground: UIView!
    @IBOutlet weak var redBackground: UIView!
    
    @IBAction func updateBackground(_ sender: AnyObject) {
        self.redBackground.alpha = CGFloat(mySlider.value)

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        redBackground.backgroundColor = UIColor.red
        redBackground.alpha = 0
        mySlider.backgroundColor = UIColor(hue: 1, saturation: 1, brightness: 1, alpha: 0)
        yellowBackground.backgroundColor = UIColor.yellow
        mySlider.delegate = self
        print(mySlider.value)
    }
    
    func updateColor () {
    
    
    }

    func circularSlider(_ circularSlider: CircularSlider, didEndEditing textfield: UITextField) {
        print("did end editing")
    }
    
    func circularSlider(_ circularSlider: CircularSlider, didBeginEditing textfield: UITextField) {
        print("did begin editing")
    }


}

