//
//  Shop.swift
//  Touchdown
//
//  Created by Mark Davis on 10/7/24.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
