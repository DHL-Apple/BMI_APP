//
//  BmiAns.swift
//  BMI
//
//  Created by D-MacBookPro13 on 2020/11/08.
//

import SwiftUI



struct BmiAns: View {
    @Environment(\.presentationMode) var presentation
    
    let weight: String
    let height: String
    
    var bmi: Double {
        //ここでBMIを計算する
        func calc(height: Double, weight: Double) -> String{
            let h = height / 100
            let w = weight
            var result = w / (h * h)
            result = floor(result * 10) / 10
            return result.debugDescription
        }
        return 20.0
    }
    
    var body: some View {
        VStack {
            Spacer()
            Text("BMI").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(.bold)
            Text("weight: \(weight), height:\(height), BEI: \(bmi)")
            Spacer()
            Button(action: { self.presentation.wrappedValue.dismiss()}) {
                
                Text("OK").font(.title)
            }.padding()
        }
    }
}


struct BmiAns_Previews: PreviewProvider {
    static var previews: some View {
        BmiAns(weight: "67", height: "168")
    }
}
