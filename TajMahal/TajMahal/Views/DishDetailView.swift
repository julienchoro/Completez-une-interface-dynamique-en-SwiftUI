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
        
        NavigationStack {
            Text(name)
            
                .navigationTitle(name)
        }
        .navigationBarBackButtonHidden(false)

    }
}

#Preview {
    DishDetailView(name: "test")
}
