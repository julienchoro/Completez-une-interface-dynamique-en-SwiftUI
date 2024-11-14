//
//  DishDetailView.swift
//  TajMahal
//
//  Created by Julien Choromanski on 14/11/2024.
//

import SwiftUI

struct DishDetailView: View {
    @Environment(\.dismiss) private var dismiss
    
    
    var name: String
    
    var body: some View {
        
        NavigationStack {
            Text(name)
            
        }
        .navigationBarBackButtonHidden(true)
        
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack {
                        Image(systemName: "chevron.left")
                        Text(name)
                            .font(Font.custom("PlusJakartaSans-Bold", size: 18))
                    }
                    .foregroundStyle(.customBlack)
                }
            }
        }
    }
}

#Preview {
    DishDetailView(name: "test")
}
