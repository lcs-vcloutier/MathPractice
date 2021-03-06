//
//  ContentView.swift
//  MathPractice
//
//  Created by Cloutier, Vincent on 2020-10-15.
//

import SwiftUI

struct ContentView: View {
    @State private var input = ""
    @State private var score = 0
    @State private var number1 = Int.random(in: 0..<12)
    @State private var number2 = Int.random(in: 0..<12)
    @State private var operatorNumber = Int.random(in: 0..<4)
    @State private var answer = 0
    @State private var sheet = false
    @State private var animationName = ""
    var body: some View {
        VStack {
            // Display the randomized equation
            if operatorNumber == 0 {
                Text("\(number1) + \(number2)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            else if operatorNumber == 1 {
                Text("\(number1) - \(number2)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            else if operatorNumber == 2 {
                Text("\(number1) x \(number2)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
            }
            else if operatorNumber == 3 {
                Text("\(number1) / \(number2)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
            }
            
            // Display score
            Text("\(score) Points")
                .font(.title2)
                .fontWeight(.semibold)
            
            // Input for user answer
            TextField("Input", text: $input ).frame(width: 100.0).keyboardType(.decimalPad)         .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {checkAnswer(); self.sheet = true}, label: { Text("Go") })
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
                .sheet(isPresented: $sheet) {
                    LottieView(animationNamed: animationName)
                }
        }
    }
    func checkAnswer() {
        // Set answer
        switch operatorNumber {
        case 0:
            answer = number1 + number2
        case 1:
            answer = number1 - number2
        case 2:
            answer = number1 * number2
        case 3:
            answer = number1 / number2
        default:
            break
        }
        // Turn string into Int
        let intInput = Int(input) ?? 0
        if answer == intInput {
            // Reward users for right answers
            score += 1
            // Make a new equation
            number1 = Int.random(in: 0..<12)
            number2 = Int.random(in: 0..<12)
            operatorNumber = Int.random(in: 0..<4)
            //Set animation so sheet can display
            animationName = "correct"
        }
        else if score > 0 && answer != intInput{
            // Punish users for wrong answers
            score -= 1
            // Make a new equation
            number1 = Int.random(in: 0..<12)
            number2 = Int.random(in: 0..<12)
            operatorNumber = Int.random(in: 0..<4)
            //Set animation so sheet can display
            animationName = "wrong"
        }
        else if score == 0 && answer != intInput{
            // Make a new equation
            number1 = Int.random(in: 0..<12)
            number2 = Int.random(in: 0..<12)
            operatorNumber = Int.random(in: 0..<4)
        }
        else {
            // Make a new equation
            number1 = 0
            number2 = 0
            operatorNumber = 0
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

////Check for subtraction & fix
////if operatorNumber == 1 && number1 <= number2 {
////number1 = Int.random(in: 0..<12)
////}
////Check for division & fix
////else if operatorNumber == 4 && number1.isMultiple(of: number2) {
//   number1 = Int.random(in: 0..<12)
//  number2 = Int.random(in: 0..<12)
//}
