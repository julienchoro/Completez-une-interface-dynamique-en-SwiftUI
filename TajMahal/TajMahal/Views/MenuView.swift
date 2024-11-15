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
                                
                                DishView(imageName: item.imageName,
                                         name: item.name,
                                         description: item.description,
                                         price: item.price,
                                         spiceLevel: item.spiceLevel)
                            NavigationLink(destination: DishDetailView(dish: item)) {
                                EmptyView()
                            }
                            .opacity(0.0)
                        }
                        .listRowInsets(EdgeInsets())
                    }
                    
                } header: {
                    Text("Entrées")
                        .font(Font.custom("PlusJakartaSans-Bold", size: 14))
                        .foregroundStyle(.customGrey)
                }
                .textCase(.none)
                

                Section() {
                    
                    ForEach(viewModel.mainCourseArray) { item in
                        ZStack {
                                
                                DishView(imageName: item.imageName,
                                         name: item.name,
                                         description: item.description,
                                         price: item.price,
                                         spiceLevel: item.spiceLevel)
                            NavigationLink(destination: DishDetailView(dish: item)) {
                                EmptyView()
                            }
                            .opacity(0.0)
                        }
                        .listRowInsets(EdgeInsets())
                    }
                    
                } header: {
                    Text("Plats Principaux")
                        .font(Font.custom("PlusJakartaSans-Bold", size: 14))
                        .foregroundStyle(.customGrey)
                } .textCase(.none)
                
                
                
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
//                        Text("Menu")
                            .font(Font.custom("PlusJakartaSans-Bold", size: 18))
                    }
                    .foregroundStyle(.customBlack)
                }
            }
            
            ToolbarItem(placement: .principal) {
                Text("Menu")
                    .font(Font.custom("PlusJakartaSans-Bold", size: 18))
                    .foregroundStyle(.customBlack)
            }
        }
    }
}

struct DishView: View {
    
    let imageName: String
    let name: String
    let description: String
    let price: Double
    let spiceLevel: SpiceLevel
    
    var body: some View {
        
        ZStack {
            HStack {
                
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 112, height: 86)
                    .cornerRadius(8)
                    .clipped()
                
                Spacer()
                
                VStack (alignment: .leading) {
                    Text(name)
                        .font(.custom("PlusJakartaSans-Semibold", size: 14))
                        .foregroundStyle(.customGrey)
                    
                    Spacer()
                    
                    Text(description)
                        .font(.custom("PlusJakartaSans-Regular", size: 12))
                        .foregroundStyle(.customGrey)
                    
                    Spacer()
                    
                    HStack {
                        Text((String(format: "%.2f €", price)))
                            .font(.custom("PlusJakartaSans-Regular", size: 12))
                            .foregroundStyle(.customGrey)
                        Spacer()

                        SpiceView(spiceLevel: spiceLevel)
                    }
                }
            }
        }
        .padding()
    }
}

struct SpiceView: View {
    let spiceLevel: SpiceLevel
    
    var body: some View {
        HStack {
            ForEach(0..<3) { i in
                if spiceLevel.rawValue > i {
                    Image("redSpice")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14)
                } else {
                    Image("greySpice")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14)
                }
            }
        }
    }
}



#Preview {
    MenuView()
}
