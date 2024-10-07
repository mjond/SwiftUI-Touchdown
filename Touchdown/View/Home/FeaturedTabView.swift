//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Mark Davis on 9/25/24.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } //: TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

#Preview {
    FeaturedTabView()
        .background(Color.gray)
}
