//
//  additionView.swift
//  MathPractice
//
//  Created by Cloutier, Vincent on 2020-10-15.
//

import SwiftUI

struct additionView: View {
    @State private var input = ""
    @State private var score = 0
    let number1 = Int.random(in: 0..<12)
    let number2 = Int.random(in: 0..<12)
    let question = Int.random(in: 0..<4)
    var answer = 0
    var body: some View {
        
        VStack{
            Text("Score: \(score)")
            switch question {
            case 0: Text("\(number1) + \(number2)")
                 var answer = number1 + number2
            case 1: Text("\(number1) - \(number2)")
                var answer = number1 - number2
            case 2: Text("\(number1) / \(number2)")
                var answer = number1 / number2
            case 3: Text("\(number1) * \(number2)")
                var answer = number1 * number2
            default: Text("ERROR")
            }
            TextField("Input", text: $input).keyboardType(.decimalPad)
            Button(action: {checkAnswer()}, label: { Text("Click Me") })
        }
    }
    func checkAnswer() {
        let intInput = Int(input) ?? 0
        if answer == intInput {
            score += 1
            //new equation
        }
        else {
            print("error")
        }
    }
}

struct additionView_Previews: PreviewProvider {
    static var previews: some View {
        additionView()
    }
}

