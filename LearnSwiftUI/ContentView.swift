//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by Xiaochun Shen on 2022/11/7.
//

import SwiftUI

struct ContentView: View {
    
    
    
    @State private var name = ""
    
    var body: some View {
        Form {
            
            
            TextField("Enter your name", text: $name) // $ for two-way binding
            Text("Your name is \(name)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
