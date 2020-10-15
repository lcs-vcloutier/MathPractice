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
let operations = ["+","-","*","/"]
let number1 = [1,2,3,4,5,6,7,8,9,10,11,12]
let number2 = [1,2,3,4,5,6,7,8,9,10,11,12]
let equation = "\(number1.shuffled())\(operations.shuffled()) \(number2.shuffled())"

let answer = 0

    
    var body: some View {
        VStack{
        Text("Score:\(score)")
        Text(equation)
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
