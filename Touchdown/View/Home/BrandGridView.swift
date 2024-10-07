//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Mark Davis on 10/1/24.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                } //: ForEach
            } //: LazyHGrid
            .frame(height: 200)
            .padding(15)
        } //: ScrollView
    }
}

#Preview {
    BrandGridView()
        .background(colorBackground)
}
