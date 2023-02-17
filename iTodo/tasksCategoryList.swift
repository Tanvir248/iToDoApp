//
//  tasksCategoryList.swift
//  iTodo
//
//  Created by Tanvir Rahman on 17.02.2023.
//

import SwiftUI

struct tasksCategoryList: View {
    var body: some View {
        VStack{
            List{
                ForEach(0..<20){i in
                    NavigationLink{
                        taskListView(taskCategory: "Office")
                            .navigationBarTitleDisplayMode(.inline)

                    }label: {
                        VStack(alignment: .leading){
                        Text("Office")
                                .font(.title2)
                                .bold()
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                        Text("Total 15, Completed 80%")
                        }
                    }
                    
                }
            }
        }.listStyle(.plain)
          
    }
}

struct tasksCategoryList_Previews: PreviewProvider {
    static var previews: some View {
        tasksCategoryList()
    }
}
