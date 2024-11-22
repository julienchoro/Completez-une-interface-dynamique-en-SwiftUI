//
//  Style.swift
//  TajMahal
//
//  Created by Julien Choromanski on 22/11/2024.
//

import Foundation
import SwiftUI

// Extension pour ajouter des styles de texte personnalisés aux vues
extension View {
    // Applique une police personnalisée avec le Weight, Size et Color
    func customText(weight: String, fontSize: CGFloat, color: Color) -> some View {
        self
            .font(Font.custom("PlusJakartaSans-\(weight)", size: fontSize))
            .foregroundStyle(color)
    }
}



