//
//  DishView.swift
//  TajMahal
//
//  Created by Julien Choromanski on 15/11/2024.
//

import SwiftUI

// Vue représentant un plat dans la liste du menu
struct DishView: View {
    
    // Plat à afficher
    let dish: Dish
    
    var body: some View {
        
        ZStack {
            HStack {
                // Image du plat
                Image(dish.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 112, height: 86)
                    .cornerRadius(8)
                    .clipped()
                
                Spacer()
                
                // Informations du plat
                VStack (alignment: .leading) {
                    // Nom du plat
                    Text(dish.name)
                        .customText(weight: "SemiBold", fontSize: 14, color: .customGrey)
                    
                    Spacer()
                    
                    // Description du plat
                    Text(dish.description)
                        .customText(weight: "Regular", fontSize: 12, color: .customGrey)
                    
                    Spacer()
                    
                    // Prix et niveau d'épices
                    HStack {
                        Text((String(format: "%.2f €", dish.price)))
                            .customText(weight: "Regular", fontSize: 12, color: .customGrey)

                        Spacer()

                        SpiceView(spiceLevel: dish.spiceLevel)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    DishView(dish: ViewModel().apetizerArray[0])
}
