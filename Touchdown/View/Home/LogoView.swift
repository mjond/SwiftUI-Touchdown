//
//  LogoView.swift
//  Touchdown
//
//  Created by Mark Davis on 4/17/24.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
        } //: hstack
    }
}

// MARK: - preview

#Preview {
    LogoView()
        .previewLayout(.sizeThatFits)
        .padding()
}
