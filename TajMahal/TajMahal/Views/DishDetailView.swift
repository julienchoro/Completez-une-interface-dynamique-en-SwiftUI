//
//  DishDetailView.swift
//  TajMahal
//
//  Created by Julien Choromanski on 14/11/2024.
//

import SwiftUI

struct DishDetailView: View {
    
    var name: String

    var body: some View {
        Text(name)
    }
}

#Preview {
    DishDetailView(name: "test")
}
