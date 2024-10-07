//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Mark Davis on 9/25/24.
//

import SwiftUI

struct FeaturedItemView: View {
    
    // MARK: - PROPERTY
    
    let player: Player
    
    // MARK: - BODY
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    FeaturedItemView(player: players[0])
        .padding()
        .background(colorBackground)
}
