//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Mark Davis on 10/1/24.
//

import SwiftUI

struct NavigationBarDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn) {
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundStyle(.white)
            })
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundStyle(.white)
            })
        } //: HStack
    }
}

#Preview {
    NavigationBarDetailView()
        .environmentObject(Shop())
        .padding()
        .background(Color.gray)
}
