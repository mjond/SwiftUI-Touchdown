//
//  FooterView.swift
//  Touchdown
//
//  Created by Mark Davis on 4/17/24.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack {
            Text("We offer the most cutting edge, comfortable, lightweight, and durable football helmets in the market at affordable prices.")
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundStyle(.gray)
                .layoutPriority(0)
            
            Text("Copyright Robert Petras\nAll rights reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }
        .padding()
    }
}

#Preview {
    FooterView()
        .previewLayout(.sizeThatFits)
        .background(colorBackground)
}
