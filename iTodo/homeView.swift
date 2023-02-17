//
//  initialView.swift
//  iTodo
//
//  Created by Tanvir Rahman on 17.02.2023.
//

import SwiftUI

struct homeView: View {
    @State var addTaskCategory: Bool = false
    @State var taskCategoryString: String = ""
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    
                    HStack{
                        taskPesentageCircle()
                        
                        Text("\(Date().format(format: "EEEE\nMMM d, yyyy"))")
                            .font(.headline)
                        Spacer(minLength: 20)
                    }.padding(.horizontal , 10)
                    
                    Section(header:
                                HStack{Text("Task Category : ")
                            .foregroundColor(.secondary)
                        Spacer()
                    }.padding(10)) {
                        tasksCategoryList()
                    }
                }
                VStack{
                    Spacer()
                    HStack{
                        Spacer()
                        Button{
                            withAnimation(.spring()){
                            addTaskCategory = true
                            }
                        }label: {
                            Circle()
                                .frame(width: 50, height: 50, alignment: .center)
                                .foregroundColor(.green)
                                .overlay(
                                    Text("+")
                                        .font(.title)
                                        .foregroundColor(.white)
                                    
                                )
                        }
                        
                        .padding()
                    }
                    
                }
                if addTaskCategory {
                    addTextView(openField: $addTaskCategory, text: $taskCategoryString, Placeholder: "Type Task Category...")
                }
            }
            .navigationTitle("Today")
        }
    }
}

struct initialView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
