//
//  DishDetailView.swift
//  TajMahal
//
//  Created by Julien Choromanski on 14/11/2024.
//

import SwiftUI

// Vue de détail d'un plat spécifique
struct DishDetailView: View {
    // Fermeture de la vue
    @Environment(\.dismiss) private var dismiss
    // Plat à afficher
    var dish: Dish
    
    var body: some View {
        NavigationStack {
            List {
                Group {
                    // Section image et niveau d'épices
                    VStack(alignment: .leading) {
                        ZStack (alignment: .topTrailing) {
                            // Image du plat
                            Image(dish.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(14)
                                .padding()
                            // Indicateur du niveau d'épices
                            SpiceView(spiceLevel: dish.spiceLevel)
                                .padding(6)
                                .background(Color.white)
                                .cornerRadius(12)
                                .padding(30)
                        
                        }
                        // Section allergènes
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Allergènes:")
                                .customText(weight: "SemiBold", fontSize: 14, color: .customGrey)
                            
                            Text(dish.ingredients)
                                .customText(weight: "Regular", fontSize: 14, color: .customGrey)

                        }
                        .padding()
                    }
                    .listRowSeparator(.hidden, edges: .top)
                    
                    // Section ingrédients
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Ingrédients:")
                            .customText(weight: "SemiBold", fontSize: 14, color: .customGrey)
                        
                        Text(dish.allergens)
                            .customText(weight: "Regular", fontSize: 14, color: .customGrey)

                    }
                    .listRowSeparator(.hidden, edges: .bottom)
                    .padding()
                }
                .listRowInsets(EdgeInsets())

            }
            .listStyle(.plain)
            .frame(maxWidth: .infinity)

            
        }
        // Configuration de la barre de navigation
        .navigationBarBackButtonHidden(true)
        .toolbar {
            // Bouton retour personnalisé
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack {
                        Image(systemName: "chevron.left")
                        Text(dish.name)
                            .customText(weight: "Bold", fontSize: 18, color: .customBlack)

                    }
                    .foregroundStyle(.customBlack)
                }
            }
        }
    }
}

#Preview {
    DishDetailView(dish: ViewModel().apetizerArray[2])
}
