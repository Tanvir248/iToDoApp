//
//  mainView.swift
//  iTodo
//
//  Created by Tanvir Rahman on 17.02.2023.
//

import SwiftUI

struct mainView: View {
    var body: some View {
        TabView {
            homeView()
                .badge(10)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
           historyView()
                .tabItem {
                    Image(systemName: "doc.plaintext")
                    Text("History")
                }
            statisticView()
                .tabItem {
                    Image(systemName: "chart.bar.xaxis")
                    Text("Statistics")
                }
        }
        .font(.headline)
    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}
