//
//  FormView.swift
//  Notrip
//
//  Created by Arief Ramadhan on 28/07/22.
//

import Foundation
import SwiftUI

//class ProfileViewModel: ObservableObject{
//    @Published var firstName: String = ""
//    @Published var lastName: String = ""
//    @Published var age = ""
//    @Published var ageIsShowing = false
//
//}
struct formView: View {
    
    @State private var selection = "Tech"
        let tagged = ["Tech", "Design", "Product", "Other"]
    
    @Binding var colorSelected: Color
    
//    @State private var colorSelected: Color = Color("kuning")
    let color: [Color] = [Color("kuning"), Color("merah"), Color("biru"), Color("hijau")]

//    @StateObject var viewModel: ProfileViewModel
    
    @State var title: String = ""
    @State var resource: String = ""
    @State var resume: String = ""
    
    var body: some View {
        VStack {
            Form {
                Section {
                    TextField("Notes title", text: $title)
                } header: {
                    Text("Title")
                }
                Section {
                    TextField("Resource", text: $resource)
                    
                } header: {
                    Text("Resource")
                }
                Section {
                    Picker("", selection: $colorSelected) {
                        ForEach(color, id: \.self) { color in
                            RoundedRectangle(cornerRadius: 10.0)
                                .foregroundColor(color)
                                .frame(width: 45, height: 45)
                                .opacity(color == colorSelected ? 0.5: 1.0)
                                .scaleEffect(color == colorSelected ? 1.1 : 1.0)
                                .onTapGesture {
                                    colorSelected = color
                                }
                        }
                    }.accentColor(.black)
                        .frame(width: 300, alignment: .leading)
                                .pickerStyle(.menu)
//                    Picker {
//                        HStack{
//                            ForEach(color, id: \.self) { color in
//                                RoundedRectangle(cornerRadius: 10.0)
//                                    .foregroundColor(color)
//                                    .frame(width: 45, height: 45)
//                                    .opacity(color == colorSelected ? 0.5: 1.0)
//                                    .scaleEffect(color == colorSelected ? 1.1 : 1.0)
//                                    .onTapGesture {
//                                        colorSelected = color
//                                    }
//                            }
//                        }
//                    }.pickerStyle(.menu)
                    
                } header: {
                    Text("Color")
                }
                Section {
//                    TextField("Last Name", text: $lastnama)
                    Picker("\(selection)", selection: $selection) {
                                    ForEach(tagged, id: \.self) {
                                        Text($0)
                                    }
                    }.accentColor(.black)
                        .frame(width: 300, alignment: .leading)
                                .pickerStyle(.menu)

                } header: {
                    Text("Tag")
                }
                Section {
                    TextField("Write your resume here", text: $resume)
                        .frame(height: 250, alignment: .topLeading)
                } header: {
                    Text("Resume")
                }
            }
            Button(action: {
                print("button work")
                
            }){
                Text("Create Notes")
                    .frame(width: 150, height: 50, alignment: .center)
                    .background(Color("tapBar"))
                    .cornerRadius(5)
                    .foregroundColor(.white)
                    
            }
            .navigationTitle("Add Notes")
        } .background(Color("bg"))
    }
}




//
//struct detail: View {
//
//    //    enum NotifyMeAboutType: String, CaseIterable, Identifiable {
//    //        case directMessages, mentions, anything
//    //        var id: Self { self }
//    //    }
//    //
//    //    @State private var notifyMeAbout: NotifyMeAboutType = .directMessages
//    //
    
//    var body: some View {
        
//    }
//}
//
struct formView_Previews: PreviewProvider {
    static var previews: some View {
//        detail(viewModel: ProfileViewModel())
        formView(colorSelected: .constant(Color("merah")))
    }
}
//
//
//
//Section(header: Text("Notifications")) {
//    Picker("Notify Me About", selection: Hashable) {
//        Text("Direct Messages")
//        Text("Mentions")
//        Text("Anything")
//    }
//}
//Section(header: Text("User Profiles")) {
//    Picker("Profile Image Size", selection: Hashable) {
//        Text("Large")
//        Text("Medium")
//        Text("Small")
//    }
//    Button("Clear Image Cache") {}
//}
