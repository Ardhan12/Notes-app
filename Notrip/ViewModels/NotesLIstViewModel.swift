//
//  NotesLIstViewModel.swift
//  Notrip
//
//  Created by Arief Ramadhan on 29/07/22.
//

import Foundation
import CoreData

class NotesLIstViewModel: ObservableObject {
    
    private (set) var context: NSManagedObjectContext
    
    init(context: NSManagedObjectContext) {
        self.context = context
    }
    
}
