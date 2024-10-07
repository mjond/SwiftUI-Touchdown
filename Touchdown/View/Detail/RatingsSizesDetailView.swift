//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by Mark Davis on 10/2/24.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    let sizes: [String] = ["XS", "S", "M", "L", "XL", "XXL"]
    
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            // Ratings
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundStyle(.white)
                        }) //: Button
                    } //: ForEach
                } //: HStack
            } //: VStack
            
            Spacer()
            
            // Sizes
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack(alignment: .center, spacing: 5) {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {}, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundStyle(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                        }) //: Button
                    } //: ForEach
                } //: HStack
            } //: VStack
        } //: HStack
    }
}

#Preview {
    RatingsSizesDetailView()
}
