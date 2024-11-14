//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Page d'accueil
struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            Image("TajMahal")
                .resizable()
                .scaledToFit()
                .padding()
            HStack {
                VStack(alignment: .leading) {
                    Text("Restaurant Indien")
                        .font(Font.custom("PlusJakartaSans-Regular.ttf", size: 12))
                        .foregroundStyle(.customGrey)
                    Text("Taj Mahal")
                        .font(Font.custom("PlusJakartaSans-Bold.ttf", size: 18))
                        .foregroundStyle(.customBlack)
                        .font(.title)
                }
                Spacer()
                Image("Logo")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .colorMultiply(.customGrey)
            }
            .padding()
            
            VStack(spacing: 10) {
                HStack {
                    Image("Horaire")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 12, height: 12)
                        .tint(.customGrey)
                    Text("Mardi")
                        .font(Font.custom("PlusJakartaSans-SemiBold.ttf", size: 12))
                        .foregroundStyle(.customGrey)
                    Spacer()
                    Text("11h30 - 14h30 • 18h30 - 22h00")                    .font(Font.custom("PlusJakartaSans-SemiBold.ttf", size: 12))
                        .foregroundStyle(.customGrey)
                    
                }
                
                HStack {
                    Image("Type de Service")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14, height: 12)
                        .tint(.customGrey)
                    
                    Text("Type de Service")                    .font(Font.custom("PlusJakartaSans-SemiBold.ttf", size: 12))
                        .foregroundStyle(.customGrey)
                    
                    Spacer()
                    Text("À emporter")
                        .font(Font.custom("PlusJakartaSans-SemiBold.ttf", size: 12))
                        .foregroundStyle(.customGrey)
                    
                }
                
                HStack {
                    Image("Localisation")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 11, height: 13)
                        .tint(.customGrey)
                    
                    Text("12 Avenue de la Brique - 75010 Paris")
                        .font(Font.custom("PlusJakartaSans-SemiBold.ttf", size: 12))
                        .foregroundStyle(.customGrey)
                    
                    Spacer()
                }
                
                HStack {
                    Image("Site")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 12, height: 12)
                        .tint(.customGrey)
                    
                    Text(verbatim:"www.tajmahal.fr")
                        .font(Font.custom("PlusJakartaSans-SemiBold.ttf", size: 12))
                        .foregroundStyle(.customGrey)
                    
                    Spacer()
                }
                
                HStack {
                    Image("Téléphone")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 12, height: 12)
                        .tint(.customGrey)
                    
                    Text("06 12 34 56 78")
                        .font(Font.custom("PlusJakartaSans-SemiBold.ttf", size: 12))
                        .foregroundStyle(.customGrey)
                    
                    Spacer()
                }
            }
            .padding()
            
            Spacer()
            NavigationLink {
                MenuView()
            } label : {
                Text("Menu")
            }
        }
    }
}

#Preview {
    WelcomeView()
}
