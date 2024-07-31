//
//  ContentView.swift
//  BMICalculator-Swift
//
//  Created by Chu Thit Sar on 7/29/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var weight: String = ""
    @State var height: String = ""
    @State var gender: String = "Male"
    @State var bmiResult: BMIResult?
    
    var body: some View {
        VStack {
            Text("BMI Calculator")
                .font(.title)
                .fontWeight(.semibold)
            
            TextField("Enter your weight (kg)", text: $weight)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .padding()
            
            TextField("Enter your height (cm)", text: $height)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .padding()
            
            Picker("Gender", selection: $gender) {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            Button(action: calculateBMI) {
                Text("Calculate BMI")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .shadow(radius: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
            .padding()
            
            if let result = bmiResult {
                Text(result.message)
                    .foregroundColor(result.color)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            
            
            
        }
        .padding()
    }
    
    private func calculateBMI() {
        guard let weight = Double(weight), let height = Double(height) else {
            return
        }
        let heightInMeters = height / 100
        let person = Person(weight: weight, height: heightInMeters, gender: gender)
        bmiResult = person.calculateBMI()
    }
}

#Preview {
    ContentView()
}
