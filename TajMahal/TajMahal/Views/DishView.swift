//
//  DishView.swift
//  TajMahal
//
//  Created by Julien Choromanski on 15/11/2024.
//

import SwiftUI

struct DishView: View {
    
    let dish: Dish
    
    var body: some View {
        
        ZStack {
            HStack {
                
                Image(dish.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 112, height: 86)
                    .cornerRadius(8)
                    .clipped()
                
                Spacer()
                
                VStack (alignment: .leading) {
                    Text(dish.name)
                        .customText(weight: "SemiBold", fontSize: 14, color: .customGrey)
                    
                    Spacer()
                    
                    Text(dish.description)
                        .customText(weight: "Regular", fontSize: 12, color: .customGrey)
                    
                    Spacer()
                    
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
