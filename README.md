# BMI Calculator App

## Overview

The **BMI Calculator App** is a simple and intuitive iOS application developed using Swift and SwiftUI. This app allows users to calculate their Body Mass Index (BMI) based on their weight, height, and gender. The BMI is then used to determine whether the user is underweight, normal weight, or overweight, and the result is displayed with appropriate messaging and color coding directly on the screen.

## Features

- **User Input:** 
  - Weight in kilograms.
  - Height in centimeters.
  - Gender selection (Male/Female).
  
- **BMI Calculation:** 
  - Converts height to meters before calculation.
  - Calculates BMI based on weight and height.
  - Determines if the BMI falls under underweight, normal weight, or overweight categories.

- **Result Display:**
  - Displays the BMI result directly under the "Calculate BMI" button.
  - Shows a personalized message:
    - Green for normal weight.
    - Red for underweight or overweight.

## Installation

To run this app on your local machine:

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/chuthitsar/bmi-calculator-swift.git
    cd bmi-calculator-swift
    ```

2. **Open in Xcode:**

    - Open the `.xcodeproj` file in Xcode.

3. **Build and Run:**

    - Build and run the project on a simulator or your iOS device.

## Usage

1. **Enter your weight** in kilograms (e.g., 70 kg).
2. **Enter your height** in centimeters (e.g., 175 cm).
3. **Select your gender** (Male or Female).
4. **Tap the "Calculate BMI" button** to see your BMI and the corresponding weight category.

## Code Structure

- **`ContentView.swift`:** 
  - Handles the user interface, input fields, button actions, and result display.

- **`Person.swift`:**
  - Contains the `Person` class and the `BMIResult` enum.
  - The `Person` class calculates the BMI.
  - The `BMIResult` enum categorizes the BMI and provides corresponding messages and colors.

## BMI Categories

The BMI ranges used in this app are:

- **Underweight:** BMI < 18.5
- **Normal weight:** 18.5 ≤ BMI < 25.0
- **Overweight:** BMI ≥ 25.0

## Requirements

- **iOS:** 14.0+
- **Xcode:** 12.0+
- **Swift:** 5.3+
