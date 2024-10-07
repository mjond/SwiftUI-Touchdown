//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Mark Davis on 10/1/24.
//

import SwiftUI

struct TopPartDetailView: View {
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            // Price
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            } //: VStack
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            // Photo
            Image(shop.selectedProduct?.formattedPrice ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        } //: HStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

#Preview {
    TopPartDetailView()
        .environmentObject(Shop())
        .padding()
}
