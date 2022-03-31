//
//  InventionDiceApp.swift
//  Shared
//
//  Created by Dustin Olsen on 3/30/22.
//

import SwiftUI

@main
struct InventionDiceApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
