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
                    
                    ZStack {
                        HStack {
                            
                            Image(viewModel.apetizerArray[0].imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 112, height: 86)
                                .cornerRadius(8)
                                .clipped()
                            
                            Spacer()
                            
                            VStack (alignment: .leading) {
                                Text(viewModel.apetizerArray[0].name)
                                    .font(.custom("PlusJakartaSans-Semibold", size: 14))
                                    .foregroundStyle(.customGrey)
                                
                                Spacer()
                                
                                Text(viewModel.apetizerArray[0].description)
                                    .font(.custom("PlusJakartaSans-Regular", size: 12))
                                    .foregroundStyle(.customGrey)
                                
                                Spacer()
                                
                            }
                        }
                    }
                    .frame(width: 335, height: 82)
                    
                    
                } header: {
                    Text("Entrées")
                        .font(Font.custom("PlusJakartaSans-Bold", size: 14))
                        .foregroundStyle(.customGrey)
                } .textCase(.none)
                
                
                Section() {
                    
                    
                } header: {
                    Text("Plats Principaux")
                        .font(Font.custom("PlusJakartaSans-Bold", size: 14))
                        .foregroundStyle(.customGrey)
                } .textCase(.none)
                
                
                
                
                    .listRowSeparator(.hidden)
            }
            .navigationTitle("Menu")
            
            
        }
        .navigationBarBackButtonHidden(false)
    }
}

#Preview {
    MenuView()
}
