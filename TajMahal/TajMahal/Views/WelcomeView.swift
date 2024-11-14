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
                        .font(.headline)
                    Text("Taj Mahal")
                        .font(.title)
                }
                Spacer()
                Image("Logo")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .colorMultiply(.gray)
            }
            .padding()
            
            HStack {
                Image("Horaire")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
                Text("Mardi")
                Spacer()
                Text("11h30 - 14h30 • 18h30 - 22h00")
            }
            .padding()
            
            HStack {
                Image("Type de Service")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 14, height: 12)
                Text("Type de Service")
                Spacer()
                Text("À emporter")
            }
            .padding()
            
            HStack {
                Image("Localisation")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 11, height: 13)
                Text("12 Avenue de la Brique - 75010 Paris")
                Spacer()
            }
            .padding()
            
            HStack {
                Image("Site")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
                Text("www.tajmahal.fr")
                Spacer()
            }
            .padding()
            
            HStack {
                Image("Téléphone")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
                Text("06 12 34 56 78")
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
