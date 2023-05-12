//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain=CalculatorBrain()

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height=String(format: "%.2f", sender.value)
        heightLabel.text="\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight=Int(sender.value)
        weightLabel.text="\(weight)Kg"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let height=heightSlider.value
        let weight=weightSlider.value
        calculatorBrain.calculate(height: height, weight: weight)
    
        
        self.performSegue(withIdentifier: "goToResult",sender:self)
        
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="goToResult"{
            let destinationVC=segue.destination as! ResultViewController
            destinationVC.bmiValue=calculatorBrain.getBMIValue()
            destinationVC.bmiAdvice=calculatorBrain.getBMIadvice()
            destinationVC.bmiColor=calculatorBrain.getBMIColor()
        }
    }
    
}

