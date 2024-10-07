//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Mark Davis on 9/25/24.
//

import SwiftUI

struct CategoryItemView: View {
    let category: Category
    
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                
                Spacer()
            } //: HStack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }) //: Button
    }
}

#Preview {
    CategoryItemView(category: categories[0])
        .padding()
        .background(colorBackground)
}
