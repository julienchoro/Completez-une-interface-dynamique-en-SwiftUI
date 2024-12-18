//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Vue principale de la page d'accueil du restaurant
struct WelcomeView: View {
    
    var body: some View {
        // Navigation principale
        NavigationStack {
            ScrollView {
                
                //MARK: Image principale du restaurant
                Image("TajMahal")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 335)
                    .scaledToFill()
                    .padding(.horizontal)
                
                //MARK: En-tête avec nom du restaurant et logo
                HStack {
                    VStack(alignment: .leading) {
                        Text("Restaurant Indien")
                            .customText(weight: "Regular", fontSize: 12, color: .customGrey)

                        Spacer()
                        Text("Taj Mahal")
                            .customText(weight: "Bold", fontSize: 18, color: .customBlack)
                            .font(.title)
                    }
                    Spacer()
                    Image("Logo")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .colorMultiply(.customGrey)
                }
                .frame(height: 40)
                .padding()
                
                //MARK: Section des informations pratiques
                VStack(spacing: 10) {
                    HStack {
                        Image("Horaire")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 12, height: 12)
                            .tint(.customGrey)
                        Text("Mardi")
                            .customText(weight: "SemiBold", fontSize: 12, color: .customGrey)

                        Spacer()
                        Text("11h30 - 14h30 • 18h30 - 22h00")
                            .customText(weight: "SemiBold", fontSize: 12, color: .customGrey)
                        
                    }
                    
                    HStack {
                        Image("Type de Service")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 12)
                            .tint(.customGrey)
                        
                        Text("Type de Service")                                                .customText(weight: "SemiBold", fontSize: 12, color: .customGrey)
                        
                        Spacer()
                        Text("À emporter")
                            .customText(weight: "SemiBold", fontSize: 12, color: .customGrey)
                        
                    }
                    
                    HStack {
                        Image("Localisation")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 11, height: 13)
                            .tint(.customGrey)
                        
                        Text("12 Avenue de la Brique - 75010 Paris")
                            .customText(weight: "SemiBold", fontSize: 12, color: .customGrey)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Image("Site")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 12, height: 12)
                            .tint(.customGrey)
                        
                        Text(verbatim:"www.tajmahal.fr")
                            .customText(weight: "SemiBold", fontSize: 12, color: .customGrey)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Image("Téléphone")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 12, height: 12)
                            .tint(.customGrey)
                        
                        Text("06 12 34 56 78")
                            .customText(weight: "SemiBold", fontSize: 12, color: .customGrey)
                        
                        Spacer()
                    }
                }
                .padding()
                
                Spacer()
                
                //MARK: Bouton d'accès au menu
                NavigationLink {
                    MenuView()
                } label : {
                    Text("Acceder au menu")
                        .customText(weight: "Bold", fontSize: 16, color: .white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.customRed)
                        .cornerRadius(10)
                        .padding()
                }
                .buttonStyle(.plain)
            }
        }
    }
}

#Preview {
    WelcomeView()
}
