//
//  NotripApp.swift
//  Notrip
//
//  Created by Arief Ramadhan on 25/07/22.
//

import SwiftUI

@main
struct NotripApp: App {
//    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            let viewContext = CoreDataManager.shared.persistentContainer.viewContext
            home(vm: NotesLIstViewModel(context: viewContext))

                .environment(\.managedObjectContext, viewContext)
//            home()
        }
    }
}
