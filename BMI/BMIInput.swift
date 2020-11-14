//
//  BMIInput.swift
//  BMI
//
//  Created by D-MacBookPro13 on 2020/11/08.
//

import SwiftUI

struct BMIInputView: View {
    
    @State var isModal: Bool = false
    var body: some View {
        Button(action: {
            self.isModal = true
        }) {
            SwiftUI.Text("計算")
        }
        .sheet(isPresented: $isModal) {
            BmiAns()
        }.navigationBarHidden(true)
        .navigationBarItems(leading: Text("戻る"))
    }
    
}





struct BMIInputView_Previews: PreviewProvider {
    static var previews: some View {
        BMIInputView()
    }
}
