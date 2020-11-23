//
//  NumberTextField.swift
//  BMI
//
//  Created by Digital Hub Life on 2020/11/23.
//

import SwiftUI

struct NumberTextField: View {
    var title: String
    //体重と身長にバインディングする変数
    @Binding var number: String
    
    var body: some View {
        HStack{
            //見出し
            Text(title + ":")
            //テキストフィールドの作成
            TextField("0", text: $number)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numbersAndPunctuation)
            //数値チェックがtrueならチェックマークを表示する
            if numCheck(number){
                Image(systemName: "checkmark")
                    .foregroundColor(.blue)
            } else {
                Image(systemName: "arrow.left")
                    .foregroundColor(.red)
            }
        }.frame(width:150)
    }

    
    //正の値ならtrueを返す
    func numCheck(_ number: String) -> Bool {
        //doubleに変換できるならnumに入れる
        guard let num = Double(number) else {
            return false
        }
        return num > 0
    }
}

struct NumberTextField_Previews: PreviewProvider {
    static var previews: some View {
        NumberTextField(title: "テスト", number: .constant("入力フィールド"))
    }
}
