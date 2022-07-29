//
//  home.swift
//  Notrip
//
//  Created by Arief Ramadhan on 26/07/22.
//

import Foundation
import SwiftUI

struct home: View {
    
    @Environment(\.managedObjectContext) var viewContext
    private var notesListVM: NotesLIstViewModel
    
    init(vm: NotesLIstViewModel) {
        self.notesListVM = vm
    }
    
    var body: some View {
        TabView {
            notesView()
                .tabItem {
                Image(systemName: "note.text")
                Text("Notes")
                    
            }
            categoriesView()
                .tabItem {
                Image(systemName: "menucard")
                Text("Categories")
            }
        }
        .accentColor(Color("tapBar"))
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        let viewContext = CoreDataManager.shared.persistentContainer.viewContext
        home(vm: NotesLIstViewModel(context: viewContext))
    }
}
