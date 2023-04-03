//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        // Round height slider value to two decimal places
        let height = round(sender.value * 100) / 100
        heightLabel.text = "\(String(height))m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        // Cast weight slider value to an Int so the numbers after the decimal point are dropped and the value is converted to a whole number whole number
        let weight = Int(sender.value)
        weightLabel.text = "\(String(weight))Kg"
    }
}
