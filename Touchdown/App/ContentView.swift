//
//  ContentView.swift
//  Touchdown
//
//  Created by Mark Davis on 4/17/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - properties
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - body
    
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                                .frame(height: UIScreen.main.bounds.width / 1.475) // This will fix the layout rendering priority issue by using the screen's aspect ratio.
                                .padding(.vertical, 20)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15) {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                } //: ForEach
                            } //: LazyVGrid
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        } //: VStack
                    }) //: ScrollViews
                    
                } //: VStack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        } //: zstack
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - preview

#Preview {
    ContentView()
        .environmentObject(Shop())
}
