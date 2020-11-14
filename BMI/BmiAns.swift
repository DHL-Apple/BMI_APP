//
//  BmiAns.swift
//  BMI
//
//  Created by D-MacBookPro13 on 2020/11/08.
//

import SwiftUI



struct BmiAns: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack {
        Spacer()
            Text("BMI").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(.bold)
        Spacer()
        Button(action: { self.presentation.wrappedValue.dismiss()}) {
                
            Text("OK").font(.title)
    }.padding()
        }
    }
}


struct BmiAns_Previews: PreviewProvider {
    static var previews: some View {
        BmiAns()
    }
}
