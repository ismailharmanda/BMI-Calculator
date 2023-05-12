//
//  CalculatorBran.swift
//  BMI Calculator
//
//  Created by ismail harmanda on 11.05.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//
import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    
    mutating func calculate(height:Float,weight:Float){
        bmi=BMI(value:(weight/pow(height,2)))
    }
    
    func getBMIValue()->String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
        
    }
    
    func getBMIadvice()->String{
        return bmi!.advice
    }
    
    func getBMIColor()->UIColor{
        return bmi!.color
    }

    
}
