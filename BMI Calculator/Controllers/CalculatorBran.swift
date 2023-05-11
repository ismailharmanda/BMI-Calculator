//
//  CalculatorBran.swift
//  BMI Calculator
//
//  Created by ismail harmanda on 11.05.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//
import UIKit

struct CalculatorBrain {
    var BMI:Float=0.0
    
    mutating func calculate(height:Float,weight:Float){
        BMI=(weight/pow(height,2))
    }
    
    func getBMIValue()->String{
        return String(format: "%.1f", BMI)
    }
    
}
