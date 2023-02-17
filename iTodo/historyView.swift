//
//  historyView.swift
//  iTodo
//
//  Created by Tanvir Rahman on 05.02.2023.
//

import SwiftUI

struct historyView: View {
    var body: some View {
        NavigationView{
        VStack{
            List{
                ForEach(0..<10){i in
                    NavigationLink{
                        taskListView(taskCategory: "Office")
                            .navigationBarTitleDisplayMode(.inline)
                    }label: {
                        VStack(alignment: .leading){
                        Text("Go to a tour \n \(Date().format(format: "EEEE, MMM d, yyyy"))")
                        Text("Total 15, Completed 80%")
                        }
                    }
                    
                }
            }
        }.listStyle(.grouped)
                .navigationTitle("History")
           
        }
    }
}

struct historyView_Previews: PreviewProvider {
    static var previews: some View {
        historyView()
    }
}
