//
//  Card.swift
//  Cardgame
//
//  Created by Mustafa Obousy on 08/03/2022.
//

import SwiftUI

@main
struct Card: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
