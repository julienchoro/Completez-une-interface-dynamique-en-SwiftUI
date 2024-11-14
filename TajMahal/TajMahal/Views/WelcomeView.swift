//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Page d'accueil
struct WelcomeView: View {
    
//    private var test = {
//        for family in UIFont.familyNames {
//                 print(family)
//                 for names in UIFont.fontNames(forFamilyName: family){
//                 print("== \(names)")
//                 }
//            }
//        return "test"
//    }
//    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                
//MARK: Picture of the view
                Image("TajMahal")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 335)
                    .scaledToFill()
                    .padding()
                
//MARK: Name and logo
                HStack {
                    VStack(alignment: .leading) {
                        Text("Restaurant Indien")
                            .font(Font.custom("PlusJakartaSans-Regular", size: 12))
                            .foregroundStyle(.customGrey)
                        Spacer()
                        Text("Taj Mahal")
                            .font(Font.custom("PlusJakartaSans-Bold", size: 18))
                            .foregroundStyle(.customBlack)
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
                
//MARK: Informations
                VStack(spacing: 10) {
                    HStack {
                        Image("Horaire")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 12, height: 12)
                            .tint(.customGrey)
                        Text("Mardi")
                            .font(Font.custom("PlusJakartaSans-SemiBold", size: 12))
                            .foregroundStyle(.customGrey)
                        Spacer()
                        Text("11h30 - 14h30 • 18h30 - 22h00")                    .font(Font.custom("PlusJakartaSans-SemiBold", size: 12))
                            .foregroundStyle(.customGrey)
                        
                    }
                    
                    HStack {
                        Image("Type de Service")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 12)
                            .tint(.customGrey)
                        
                        Text("Type de Service")                    .font(Font.custom("PlusJakartaSans-SemiBold", size: 12))
                            .foregroundStyle(.customGrey)
                        
                        Spacer()
                        Text("À emporter")
                            .font(Font.custom("PlusJakartaSans-SemiBold", size: 12))
                            .foregroundStyle(.customGrey)
                        
                    }
                    
                    HStack {
                        Image("Localisation")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 11, height: 13)
                            .tint(.customGrey)
                        
                        Text("12 Avenue de la Brique - 75010 Paris")
                            .font(Font.custom("PlusJakartaSans-SemiBold", size: 12))
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
                            .font(Font.custom("PlusJakartaSans-SemiBold", size: 12))
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
                            .font(Font.custom("PlusJakartaSans-SemiBold", size: 12))
                            .foregroundStyle(.customGrey)
                        
                        Spacer()
                    }
                }
                .padding()
                
                Spacer()
                
//MARK: Navigation link button
                NavigationLink {
                    MenuView()
                } label : {
                    Text("Acceder au menu")
                        .font(Font.custom("PlusJakartaSans-Bold", size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
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
