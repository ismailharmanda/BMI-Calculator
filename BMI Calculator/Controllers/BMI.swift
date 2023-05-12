//
//  BMI.swift
//  BMI Calculator
//
//  Created by ismail harmanda on 12.05.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    let value:Float
    let advice:String
    let color:UIColor
    
    init(value: Float) {
        self.value = value
        if value<18.5 {
            self.advice = "Eat more pies!"
            self.color = UIColor.cyan
        } else if value<25 {
            self.advice = "Fit as a fiddle!"
            self.color = UIColor.systemGreen
        } else {
            self.advice = "Eat less pies!"
            self.color = UIColor.systemRed
        }
        
    }

}
