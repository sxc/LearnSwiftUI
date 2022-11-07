//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by Xiaochun Shen on 2022/11/7.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    
    
    @State private var name = ""
    @State private var message = ""
    @State private var textStyle = UIFont.TextStyle.body
    
    var body: some View {
        VStack {
            Form {
                
                
                TextField("Enter your name", text: $name) // $ for two-way binding
                Text("Your name is \(name)")
            }
            .padding()
            
            TextView(text: $message, textStyle: $textStyle)
                .padding(.horizontal)
        }
    }
}

struct ExpenseItem: Identifiable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Int
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct TextView: UIViewRepresentable {
//    @Binding var text: NSMutableAttributedString
//
//    func makeUIView(context: Context) -> some UIView {
//        UITextView()
//    }
//
//    func updateUIView(_ uiView: UITextView, context: Context) {
//        uiView.attributedText = text
//    }
//}

//struct CustomView: UIViewRepresentable {
//
//    func makeUIView(context: Context) -> some UIView {
//        // Return the UIView object
//    }
//
//    func updateUIView(_ uiView: some UIView, context: Context) {
//        // Update the view
//    }
//}


//struct TextView: UIViewRepresentable {
//
//    func makeUIView(context: Context) -> UITextView {
//
//        return UITextView()
//    }
//
//    func updateUIView(_ uiView: UITextView, context: Context) {
//
//        // Update the view
//    }
//}
