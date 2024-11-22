//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Vue affichant le menu du restaurant sous forme de liste
struct MenuView: View {
    // Permet de revenir à la vue précédente
    @Environment(\.dismiss) private var dismiss

    // ViewModel contenant les données du menu
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {

        NavigationStack {
            // Liste des plats organisée en sections
            List {
                // Section des entrées
                Section() {
                    
                    ForEach(viewModel.apetizerArray) { item in
                        ZStack {
                            // Vue personnalisée pour chaque plat
                            DishView(dish: item)
                            // Navigation vers le détail du plat
                            NavigationLink(destination: DishDetailView(dish: item)) {
                                EmptyView()
                            }
                            .opacity(0.0)
                        }
                        .listRowInsets(EdgeInsets())
                    }
                    
                } header: {
                    Text("Entrées")
                        .customText(weight: "Bold", fontSize: 14, color: .customGrey)

                }
                .textCase(.none)
                
                // Section des plats principaux
                Section() {
                    
                    ForEach(viewModel.mainCourseArray) { item in
                        ZStack {
                            // Vue personnalisée pour chaque plat
                            DishView(dish: item)
                            // Navigation vers le détail du plat
                            NavigationLink(destination: DishDetailView(dish: item)) {
                                EmptyView()
                            }
                            .opacity(0.0)
                        }
                        .listRowInsets(EdgeInsets())
                    }
                    
                } header: {
                    Text("Plats Principaux")
                        .customText(weight: "Bold", fontSize: 14, color: .customGrey)

                }
                .textCase(.none)
                .listRowSeparator(.hidden)

            }
            .listRowSpacing(12)
            
        }
        // Configuration de la barre de navigation
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            // Bouton retour personnalisé
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    // ... configuration du bouton ...
                    HStack {
                        Image(systemName: "chevron.left")
                            .font(Font.custom("PlusJakartaSans-Bold", size: 18))
                    }
                    .foregroundStyle(.customBlack)
                }
            }
            // Titre de la page
            ToolbarItem(placement: .principal) {
                Text("Menu")
                    .customText(weight: "Bold", fontSize: 18, color: .customBlack)

            }
        }
    }
}







#Preview {
    MenuView()
}
