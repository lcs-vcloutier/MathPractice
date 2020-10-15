//
//  ContentView.swift
//  MathPractice
//
//  Created by Cloutier, Vincent on 2020-10-15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("+", destination: additionView())
                NavigationLink("+", destination: additionView())
                NavigationLink("+", destination: additionView())
                NavigationLink("+", destination: additionView())
            }
            .navigationBarTitle(Text("Math Practice"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
