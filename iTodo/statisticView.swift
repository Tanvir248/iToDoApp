//
//  statisticView.swift
//  iTodo
//
//  Created by Tanvir Rahman on 17.02.2023.
//

import SwiftUI

struct statisticView: View {
    var body: some View {
        VStack{
            
        HStack(alignment: .bottom){
            Divider()
                .frame( height: 300)
            Rectangle()
                .frame(width: 40, height: 100, alignment: .center)
                .foregroundColor(.green)
                Rectangle()
                    .frame(width: 40, height: 120, alignment: .center)
            Rectangle()
                .frame(width: 40, height: 80, alignment: .center)
                .foregroundColor(.gray)
                Rectangle()
                    .frame(width: 40, height: 140, alignment: .center)
                    .foregroundColor(.yellow)
        }
            Divider()
        }
    }
}

struct statisticView_Previews: PreviewProvider {
    static var previews: some View {
        statisticView()
    }
}
