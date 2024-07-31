//
//  Person.swift
//  BMICalculator-Swift
//
//  Created by Chu Thit Sar on 7/29/24.
//

import Foundation
import SwiftUI

enum BMIResult {
    case underweight(bmi: Double)
    case normal(bmi: Double)
    case overweight(bmi: Double)
    
    var message: String {
        switch self {
        case .underweight(let bmi):
            return "Your BMI is \(String(format: "%.2f", bmi)). You are underweight."
        case .normal(let bmi):
            return "Your BMI is \(String(format: "%.2f", bmi)). You are normal."
        case .overweight(let bmi):
            return "Your BMI is \(String(format: "%.2f", bmi)). You are overweight."
        }
    }
    
    var color: Color {
        switch self {
        case .underweight, .overweight:
            return .red
        case .normal:
            return .green
        }
    }
}

class Person {
    var weight: Double
    var height: Double
    var gender: String
    
    init(weight: Double, height: Double, gender: String) {
        self.weight = weight
        self.height = height
        self.gender = gender
    }
    
    func calculateBMI() -> BMIResult {
        let bmi = weight / (height * height)
        switch bmi {
        case ..<18.5:
            return .underweight(bmi: bmi)
        case 18.5 ..< 25.0:
            return .normal(bmi: bmi)
        default:
            return .overweight(bmi: bmi)
        }
    }
}
