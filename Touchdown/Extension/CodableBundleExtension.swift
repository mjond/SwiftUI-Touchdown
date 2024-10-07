//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Mark Davis on 9/25/24.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        // 2. create property for data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        // 3. create a decoder
        let decoder = JSONDecoder()
        
        // 4. create a property for the decode data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        // 5. return the ready-to-use data
        return decodedData
    }
}
