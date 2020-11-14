//
//  ContentView.swift
//  BMI
//
//  Created by D-MacBookPro13 on 2020/11/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView() {
            VStack() {
                Text("BMI計算機")
                    .font(.title)
                    .fontWeight(.bold)
                NavigationLink(destination: BMIInputView()) {Text("はじめる") }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
