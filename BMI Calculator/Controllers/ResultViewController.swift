//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by ismail harmanda on 11.05.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var background: UIImageView!
    var bmiValue:String?
    var bmiAdvice:String?
    var bmiColor:UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text=bmiValue
        adviceLabel.text=bmiAdvice
        background.backgroundColor=bmiColor
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
