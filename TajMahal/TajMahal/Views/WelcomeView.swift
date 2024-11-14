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
                        .foregroundStyle(.customGrey)
                        .font(.headline)
                    Text("Taj Mahal")
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
            
            HStack {
                Image("Horaire")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
                    .tint(.customGrey)
                Text("Mardi")
                    .foregroundStyle(.customGrey)
                Spacer()
                Text("11h30 - 14h30 • 18h30 - 22h00")
                    .foregroundStyle(.customGrey)

            }
            .padding()
            
            HStack {
                Image("Type de Service")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 14, height: 12)
                    .tint(.customGrey)

                Text("Type de Service")
                    .foregroundStyle(.customGrey)

                Spacer()
                Text("À emporter")
                    .foregroundStyle(.customGrey)

            }
            .padding()
            
            HStack {
                Image("Localisation")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 11, height: 13)
                    .tint(.customGrey)

                Text("12 Avenue de la Brique - 75010 Paris")
                    .foregroundStyle(.customGrey)

                Spacer()
            }
            .padding()
            
            HStack {
                Image("Site")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
                    .tint(.customGrey)

                Text("www.tajmahal.fr")
                    .foregroundStyle(.customGrey)

                Spacer()
            }
            .padding()
            
            HStack {
                Image("Téléphone")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
                    .tint(.customGrey)

                Text("06 12 34 56 78")
                    .foregroundStyle(.customGrey)

                Spacer()
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
