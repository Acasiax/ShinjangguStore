//
//  ShinjangguStoreApp.swift
//  ShinjangguStore
//
//  Created by 이윤지 on 2023/07/11.
//

import SwiftUI

@main
struct ShinjangguStoreApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
