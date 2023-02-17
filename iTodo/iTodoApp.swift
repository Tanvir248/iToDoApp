//
//  iTodoApp.swift
//  iTodo
//
//  Created by Tanvir Rahman on 05.02.2023.
//

import SwiftUI

@main
struct iTodoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            mainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
