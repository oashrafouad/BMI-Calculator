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
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var heightInCentimetres = 0
    var heightInMetres: Float = 0.0
    var weight = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heightInCentimetres = Int(heightSlider.value)
        heightInMetres = Float(heightInCentimetres) / 100
        weight = Int(weightSlider.value)
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        // Cast weight slider value to an Int so the numbers after the decimal point are dropped and the value is converted to a whole number
        heightInCentimetres = Int(sender.value)
        heightLabel.text = "\(String(heightInCentimetres)) cm"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        // Cast weight slider value to an Int so the numbers after the decimal point are dropped and the value is converted to a whole number
        weight = Int(sender.value)
        weightLabel.text = "\(String(weight)) kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        heightInMetres = Float(heightInCentimetres) / 100
        let bmi = Float(weight) / pow(heightInMetres, 2)
        print(bmi)
    }
}
