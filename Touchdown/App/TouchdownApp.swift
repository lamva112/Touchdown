//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by bui khac lam on 22/08/2023.
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
