//
//  taskPesentageCircle.swift
//  iTodo
//
//  Created by Tanvir Rahman on 17.02.2023.
//

import SwiftUI

struct taskPesentageCircle: View {
    @State var trim: Double = 0.8
    var body: some View {
        VStack{
            VStack{
            ZStack{
                
            Circle()
            .stroke(.secondary, lineWidth: 8)
            .frame(width: 70, height: 70, alignment: .center)
           
            Circle()
                .trim(from: 0, to: trim)
            .stroke(.yellow, lineWidth: 8)
            
            .frame(width: 70, height: 70, alignment: .center)
            
            .overlay(
                Text("\(String(format: "%.0f", 100 * trim))%")
                .bold()
                .italic()
            )
           
            }
            Text("Completed")
                    .font(.headline)
            }.padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .shadow(color: .gray.opacity(0.2), radius: 10, x: 0, y: 10)
                    .foregroundColor(Color("Rect"))
            )
        }
    }
}

struct taskPesentageCircle_Previews: PreviewProvider {
    static var previews: some View {
        taskPesentageCircle()
    }
}
