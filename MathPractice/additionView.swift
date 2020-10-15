//
//  additionView.swift
//  MathPractice
//
//  Created by Cloutier, Vincent on 2020-10-15.
//

import SwiftUI

struct additionView: View {
@State private var input = ""
@State private var score = 1
let number1 = Int.random(in: 0..<12)
let number2 = Int.random(in: 0..<12)
switch Int.random(in: 0..<4) {
            case 0: question = "\(number1) + \(number2)" //set answer too
            case 1: question = "\(number1) - \(number2)"
            case 2: question = "\(number1) / \(number2)"
            case 3: question = "\(number1) * \(number2)"
            default: question = "ERROR"
        }
    
    var body: some View {
        
        VStack{
        Text("Score:\(score)")
            Text(question)
        TextField("Input", text: $input).keyboardType(.decimalPad)
        //button this matters
        }
    }
}

struct additionView_Previews: PreviewProvider {
    static var previews: some View {
        additionView()
    }
}

