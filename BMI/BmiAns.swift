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
//        func calc(height: Double, weight: Double) -> Double{
//            let h = height / 100
//            let w = weight
//            var result = w / (h * h)
//            result = floor(result * 10) / 10
//            return result
//        }
        // 文字列型のweight, height を Double に変換する
        // 強制的に String から Double に変換している。
        let weightDouble: Double = Double(weight)!
        let heightDouble: Double = Double(height)!
        let heightmDouble = heightDouble / 100
        let result = weightDouble / (heightmDouble * heightmDouble)
        return result
        
        
        // BMIの計算結果をDoubleで受け取る
//        let bmi: Double = calc(height: heightDouble, weight: weightDouble)
//        return bmi
    }
    
    var body: some View {
        VStack {
            Spacer()
            Text("BMI").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(.bold)
            
            if (bmi >= 20) {
                Image("himan03_youngman")
                Text("太りすぎです")
            } else {
                Image("francepan_boy")
                Text("痩せすぎです")
            }
            
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
