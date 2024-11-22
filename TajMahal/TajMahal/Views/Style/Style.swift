//
//  Style.swift
//  TajMahal
//
//  Created by Julien Choromanski on 22/11/2024.
//

import Foundation
import SwiftUI

extension View {
    func customText(weight: String, fontSize: CGFloat, color: Color) -> some View {
        self
            .font(Font.custom("PlusJakartaSans-\(weight)", size: fontSize))
            .foregroundStyle(color)
    }
}



