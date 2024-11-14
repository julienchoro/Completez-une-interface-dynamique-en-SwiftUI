//
//  DishDetailView.swift
//  TajMahal
//
//  Created by Julien Choromanski on 14/11/2024.
//

import SwiftUI

struct DishDetailView: View {
    @Environment(\.dismiss) private var dismiss
    var dish: Dish
    
    var body: some View {
        NavigationStack {
            List {
                Group {
                    VStack(alignment: .leading) {
                        ZStack (alignment: .topTrailing) {
                            Image(dish.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(14)
                                .padding()
                            SpiceView(spiceLevel: dish.spiceLevel)
                                .padding(6)
                                .background(Color.white)
                                .cornerRadius(12)
                                .padding(30)
                        
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Allergènes:")
                                .font(Font.custom("PlusJakartaSans-SemiBold", size: 14))
                                .foregroundStyle(.customGrey)
                            
                            Text(dish.ingredients)
                                .font(Font.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(.customGrey)
                        }
                        .padding()
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Ingrédients:")
                            .font(Font.custom("PlusJakartaSans-SemiBold", size: 14))
                            .foregroundStyle(.customGrey)
                        
                        Text(dish.allergens)
                            .font(Font.custom("PlusJakartaSans-Regular", size: 14))
                            .foregroundColor(.customGrey)
                    }
                    .padding()
                }
                .listRowInsets(EdgeInsets())

            }
            .frame(width: .infinity)
            .listStyle(.plain)

            
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack {
                        Image(systemName: "chevron.left")
                        Text(dish.name)
                            .font(Font.custom("PlusJakartaSans-Bold", size: 18))
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
