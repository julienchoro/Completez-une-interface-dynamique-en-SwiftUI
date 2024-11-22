//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    @Environment(\.dismiss) private var dismiss

    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {

        NavigationStack {

            List {
                
                Section() {
                    
                    ForEach(viewModel.apetizerArray) { item in
                        ZStack {
                                
                            DishView(dish: item)
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
                

                Section() {
                    
                    ForEach(viewModel.mainCourseArray) { item in
                        ZStack {
                                
                            DishView(dish: item)
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
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack {
                        Image(systemName: "chevron.left")
                            .font(Font.custom("PlusJakartaSans-Bold", size: 18))
                    }
                    .foregroundStyle(.customBlack)
                }
            }
            
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
