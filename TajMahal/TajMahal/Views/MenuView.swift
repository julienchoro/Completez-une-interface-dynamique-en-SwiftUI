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
