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
var number1 = Int.random(in: 1..<12)
var number2 = Int.random(in: 1..<12)
    //var answer = (number1 + number2)
    
    var body: some View {
        VStack{
        Text("Score:\(score)")
        Text("\(number1) + \(number2)")
        TextField("Input", text: $input).keyboardType(.decimalPad)
        //button this matters
        }
    }
}
func answerCheck() {
    if input == answer {
        score += 1
        //refreshnumbers
    }
    else {
        //popup displaying error message
    }
}
struct additionView_Previews: PreviewProvider {
    static var previews: some View {
        additionView()
    }
}
