//
//  kikufulApp.swift
//  kikuful
//
//  Created by 宮水三葉 on 2024/02/08.
//

import SwiftUI

@main
struct kikufulApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
