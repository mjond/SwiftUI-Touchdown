//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Mark Davis on 10/1/24.
//

import SwiftUI

struct BrandItemView: View {
    let brand: Brand

    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
            )
    }
}

#Preview {
    BrandItemView(brand: brands[0])
        .padding()
        .background(colorBackground)
}
