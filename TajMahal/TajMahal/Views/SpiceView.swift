//
//  SpiceView.swift
//  TajMahal
//
//  Created by Julien Choromanski on 15/11/2024.
//

import SwiftUI

// Vue affichant le niveau d'épices d'un plat
struct SpiceView: View {
    // Niveau d'épices à afficher
    let spiceLevel: SpiceLevel
    
    var body: some View {
        HStack {
            // Boucle pour afficher 3 icônes de piments
            ForEach(0..<3) { i in
                // Si le niveau d'épices est supérieur à l'index, afficher un piment rouge
                if spiceLevel.rawValue > i {
                    Image("redSpice")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14)
                } else {
                    // Sinon afficher un piment gris
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
    SpiceView(spiceLevel: ViewModel().apetizerArray[0].spiceLevel)
}
