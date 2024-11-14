//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            
            
            List {
                
                Section() {
                    
                    ForEach(viewModel.apetizerArray) { item in
                        
                        NavigationLink(destination: DishDetailView(dish: item)) {
                            
                            DishView(imageName: item.imageName,
                                     name: item.name,
                                     description: item.description)
                        }
                        
                    }
                    
                } header: {
                    Text("Entrées")
                        .font(Font.custom("PlusJakartaSans-Bold", size: 14))
                        .foregroundStyle(.customGrey)
                }
                .textCase(.none)
                
                
                
                Section() {
                    
                    ForEach(viewModel.mainCourseArray) { item in
                        
                        NavigationLink(destination: DishDetailView(dish: item)) {
                            
                            DishView(imageName: item.imageName,
                                     name: item.name,
                                     description: item.description)
                        }
                    }
                    
                } header: {
                    Text("Plats Principaux")
                        .font(Font.custom("PlusJakartaSans-Bold", size: 14))
                        .foregroundStyle(.customGrey)
                } .textCase(.none)
                
                
                
                    .listRowSeparator(.hidden)
            }
            .navigationTitle("Menu")
            .listRowSpacing(12)
            
            
            
        }
        .navigationBarBackButtonHidden(false)
    }
}

struct DishView: View {
    
    let imageName: String
    let name: String
    let description: String
    
    var body: some View {
        
        ZStack {
            HStack {
                
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 112, height: 86)
                    .cornerRadius(8)
                    .clipped()
                
                Spacer()
                
                VStack (alignment: .leading) {
                    Text(name)
                        .font(.custom("PlusJakartaSans-Semibold", size: 14))
                        .foregroundStyle(.customGrey)
                    
                    Spacer()
                    
                    Text(description)
                        .font(.custom("PlusJakartaSans-Regular", size: 12))
                        .foregroundStyle(.customGrey)
                    
                    Spacer()
                    
                }
            }
        }
        .frame(width: 335, height: 82)
    }
}

#Preview {
    MenuView()
}
