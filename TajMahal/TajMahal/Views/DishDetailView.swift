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
                                .customText(weight: "SemiBold", fontSize: 14, color: .customGrey)
                            
                            Text(dish.ingredients)
                                .customText(weight: "Regular", fontSize: 14, color: .customGrey)

                        }
                        .padding()
                    }
                    .listRowSeparator(.hidden, edges: .top)
                    
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
//            .scrollContentBackground(.hidden)
//            .listStyle(.plain)

            
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
