//
//  addTextView.swift
//  iTodo
//
//  Created by Tanvir Rahman on 17.02.2023.
//

import SwiftUI

struct addTextView: View {
    @Binding var openField: Bool
    @Binding var text: String
    var Placeholder: String
    var body: some View {
        VStack(alignment: .center){
            Text("Add Task Category")
                .bold()
            
            CustomTextField(placeholder: "\(Placeholder)", text: $text, isFirstResponder: true)
                .frame(width: UIScreen.screenWidth / 1.4, height: 30, alignment: .center)
                .padding(.horizontal, 5)
                .background(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(.gray, lineWidth: 1)
                )
        
            VStack(alignment: .center, spacing: 5){
                
                Button("Submit"){
                    print("Text: \(text)")
                    
                    openField = false
                }
                Divider()
                    .frame(width: UIScreen.screenWidth / 2, alignment: .center)
                Button("Cancle"){
                    withAnimation(.spring()){
                    openField = false
                    }
                    print("Cancle")
                }
            }
        }
        .padding(10)
        .background(){
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color("popup"))
        }
    }
}
