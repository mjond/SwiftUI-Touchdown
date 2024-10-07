//
//  Constant.swift
//  Touchdown
//
//  Created by Mark Davis on 4/17/24.
//

import SwiftUI

// data
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let sampleProduct: Product = products[0]

// color
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// ux
let feedback = UIImpactFeedbackGenerator(style: .medium)

// api
// image
// font
// string
// misc
