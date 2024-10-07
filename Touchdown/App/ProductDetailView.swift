//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Mark Davis on 10/1/24.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // Nav Bar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // Header
            HeaderDetailView()
                .padding(.horizontal)
            
            // Detail Top Part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // Detail Bottom Part
            VStack(alignment: .center, spacing: 0) {
                // Ratings + Sizes
                RatingsSizesDetailView()
                    .padding(.top, -25)
                    .padding(.bottom, 10)
                
                // Description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                } //: ScrollView
                
                // Quantity + Favorite
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                
                // Add to Cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
                
            } //: VStack
            .zIndex(0)
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        } //: VStack
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
                  green: shop.selectedProduct?.green ?? sampleProduct.green,
                  blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
                .ignoresSafeArea(.all, edges: .all)
        )
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
}
