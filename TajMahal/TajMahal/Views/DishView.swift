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
                        .font(.custom("PlusJakartaSans-Semibold", size: 14))
                        .foregroundStyle(.customGrey)
                    
                    Spacer()
                    
                    Text(dish.description)
                        .font(.custom("PlusJakartaSans-Regular", size: 12))
                        .foregroundStyle(.customGrey)
                    
                    Spacer()
                    
                    HStack {
                        Text((String(format: "%.2f €", dish.price)))
                            .font(.custom("PlusJakartaSans-Regular", size: 12))
                            .foregroundStyle(.customGrey)
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
