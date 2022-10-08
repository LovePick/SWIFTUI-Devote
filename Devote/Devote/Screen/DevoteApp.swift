//
//  DevoteApp.swift
//  Devote
//
//  Created by Supapon Pucknavin on 8/10/2565 BE.
//

import SwiftUI

@main
struct DevoteApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
