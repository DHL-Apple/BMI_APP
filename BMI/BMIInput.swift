//
//  BMIInput.swift
//  BMI
//
//  Created by D-MacBookPro13 on 2020/11/08.
//

import SwiftUI

struct BMIInputView: View {
    @Environment(\.presentationMode) var presentation
    
    @State var isModal: Bool = false
    var body: some View {
        Button(action: {
            self.isModal = true
        }) {
            Text("計算")
        }
        .sheet(isPresented: $isModal) {
            BmiAns()
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
