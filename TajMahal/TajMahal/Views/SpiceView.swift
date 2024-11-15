//
//  SpiceView.swift
//  TajMahal
//
//  Created by Julien Choromanski on 15/11/2024.
//

import SwiftUI

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
    SpiceView(spiceLevel: ViewModel().apetizerArray[0].spiceLevel)
}
