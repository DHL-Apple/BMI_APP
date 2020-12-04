//
//  BMIInput.swift
//  BMI
//
//  Created by D-MacBookPro13 on 2020/11/08.
//

import SwiftUI

struct BMIInputView: View {
    @Environment(\.presentationMode) var presentation
    @State var weight: String = ""
    @State var height: String = ""
    @State var isModal: Bool = false
    
    
    var body: some View {
        
        //データのインプット
        VStack {
            NumberTextField(title: "体重(kg)", number: $weight)
            NumberTextField(title: "身長(cm)", number: $height)
        }
        
        if (!weight.isEmpty){
            Text("\(weight)kg")
        if (!weight.isEmpty){
            Text("\(height)cm")
        }
        
        //計算ボタンの処理
        let text1 = weight
            if Double(text1) == nil {
        Button(action: {
            self.isModal = true
        }) {
            Text("計算")
        }}
        .sheet(isPresented: $isModal) {
            BmiAns(weight: weight, height: height)
        }.navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: { self.presentation.wrappedValue.dismiss()}) {
            
            Text("戻る").font(.title)
        }.padding())
    }
    
}





struct BMIInputView_Previews: PreviewProvider {
    static var previews: some View {
        BMIInputView()
    }
}
}
