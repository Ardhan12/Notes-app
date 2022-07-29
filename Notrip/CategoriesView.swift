//
//  CategoriesView.swift
//  Notrip
//
//  Created by Arief Ramadhan on 28/07/22.
//

import Foundation
import SwiftUI

struct categoriesView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    ZStack(alignment: .top) {
                        RoundedRectangle(cornerRadius: 20.0)
                            .fill(Color("biru"))
                            .frame(height: 150)
                        
                        VStack(spacing: 5) {
                            Text("Tech")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.black)
                            .padding(.top, 10)
//                            Spacer()
                            Image(systemName: "folder.fill")
                                .resizable()
                                .frame(width: 80, height: 80)
                            .foregroundColor(Color("biruFill"))
                            Text("10 notes")
                                .font(.caption)
                                .padding(.top, 3)
                        }
                    }
                    
                    ZStack(alignment: .top) {
                        RoundedRectangle(cornerRadius: 20.0)
                            .fill(Color("merah"))
                            .frame(height: 150)
                        VStack(spacing: 5) {
                            Text("Product")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.black)
                            .padding(.top, 10)
//                            Spacer()
                            Image(systemName: "folder.fill")
                                .resizable()
                                .frame(width: 80, height: 80)
                            .foregroundColor(Color("merahFill"))
                            Text("10 notes")
                                .font(.caption)
                                .padding(.top, 3)
                        }
                    }
                }
                .padding()
                
                
                HStack {
                    ZStack(alignment: .top) {
                        RoundedRectangle(cornerRadius: 20.0)
                            .fill(Color("kuning"))
                            .frame(height: 150)
                        VStack(spacing: 5) {
                            Text("Design")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.black)
                            .padding(.top, 10)
//                            Spacer()
                            Image(systemName: "folder.fill")
                                .resizable()
                                .frame(width: 80, height: 80)
                            .foregroundColor(Color("kuningFill"))
                            Text("10 notes")
                                .font(.caption)
                                .padding(.top, 3)
                        }
                    }
                    ZStack(alignment: .top) {
                        RoundedRectangle(cornerRadius: 20.0)
                            .fill(Color("hijau"))
                            .frame(height: 150)
                        VStack(spacing: 5) {
                            Text("Other")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.black)
                            .padding(.top, 10)
//                            Spacer()
                            Image(systemName: "folder.fill")
                                .resizable()
                                .frame(width: 80, height: 80)
                            .foregroundColor(Color("hijauFill"))
                            Text("10 notes")
                                .font(.caption)
                                .padding(.top, 3)
                        }
                    }
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
                Spacer()
            }            .navigationTitle("Categories")
        }
    }
}

struct CatView_Previews: PreviewProvider {
    static var previews: some View {
        categoriesView()
    }
}
