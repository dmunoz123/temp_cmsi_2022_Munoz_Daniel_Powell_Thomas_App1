//
//  FavoriteButton.swift
//  Standalone_App
//
//  Created by Daniel Munoz on 2/8/23.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            withAnimation(.easeInOut(duration: 4)) {
                    isSet.toggle()
            }
                } label: {
                    Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                        .labelStyle(.iconOnly)
                        .foregroundColor(isSet ? .yellow : .black)
                }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
