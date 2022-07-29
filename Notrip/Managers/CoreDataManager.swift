//
//  CoreDataManager.swift
//  Notrip
//
//  Created by Arief Ramadhan on 29/07/22.
//

import CoreData

class CoreDataManager {
    
    let persistentContainer: NSPersistentContainer
    static let shared = CoreDataManager()
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "NotripCoreData")
        persistentContainer.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("Core Data Stere failed \(error.localizedDescription)")
            }
        }
    }
}
