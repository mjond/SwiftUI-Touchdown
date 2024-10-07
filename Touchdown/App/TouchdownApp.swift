//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Mark Davis on 4/17/24.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
