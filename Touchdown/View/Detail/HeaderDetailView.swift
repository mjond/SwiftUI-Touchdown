//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Mark Davis on 10/1/24.
//

import SwiftUI

struct HeaderDetailView: View {
    @EnvironmentObject var shop: Shop

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        } //: VStack
        .foregroundStyle(.white)
    }
}

#Preview {
    HeaderDetailView()
        .environmentObject(Shop())
        .padding()
        .background(Color.gray)
}
