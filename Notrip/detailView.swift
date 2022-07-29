//
//  detailView.swift
//  Notrip
//
//  Created by Arief Ramadhan on 28/07/22.
//

import Foundation
import SwiftUI

struct detailView: View{
    @State private var show_edit: Bool = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View{
        NavigationView{
            inside()
            .toolbar {
                
                ToolbarItem {
                    Button(action: {
                        print("onklik")
                        self.show_edit = true
                    }){
                        Label("add item", systemImage: "square.and.pencil")
                    }.sheet(isPresented: self.$show_edit) {
                        formView(colorSelected: .constant(Color("merah")))
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        print("onklik")
                        self.presentationMode.wrappedValue.dismiss()
                    }){
                        Label("back item", systemImage: "chevron.backward")
                        Text("Personal Notes")

                    }
                    
                }
            }
            .navigationBarTitle("", displayMode: .inline)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
    }
}


struct detailView_Previews: PreviewProvider {
    static var previews: some View {
        detailView()
    }
}


struct inside: View{
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 5){
                Text("Implemented this method to your code")
                    .font(.title2)
                    .bold()
                HStack{
                    Text("Tech | ")
                        .font(.footnote)
                    Text("Resource")
                        .font(.footnote)
                        .underline()
                    Spacer()
                    Text(Date.now, format: .dateTime.day().month().year())
                        .font(.footnote)

                }
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .padding(.top, 20)
                    .font(.caption)
            }.padding()
        }
    }
}
