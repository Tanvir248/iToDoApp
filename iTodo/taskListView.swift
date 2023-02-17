//
//  taskListView.swift
//  iTodo
//
//  Created by Tanvir Rahman on 17.02.2023.
//

import SwiftUI

struct taskListView: View {
    var taskCategory: String
    @State private var isCompleted: [Bool] = []
    var body: some View {
        NavigationView{
        VStack{
            if isCompleted.count > 0 {
            List{
                ForEach(0..<10){ i in
                    HStack{
                    VStack(alignment: .leading){
                        Text("App Target")
                        Text("Date")
                            
                    }
                        Spacer()
                        if isCompleted[i] {
                            Text("Done")
                        
                        }else{
                            Text("X")
                        }
                        
                    }.onTapGesture {
                        print("Hello \(i)")
                        isCompleted[i].toggle()
                    }
                    
                }
            }
            }
        }.listStyle(.grouped)
                .navigationTitle(taskCategory)
           
        }.onAppear(){
            arrayElements()
        }
    }
    func arrayElements(){
        for _ in 0..<10 {
            isCompleted.append(false)
        }
    }
}

struct taskListView_Previews: PreviewProvider {
    static var previews: some View {
        taskListView(taskCategory: "Nothing")
    }
}
