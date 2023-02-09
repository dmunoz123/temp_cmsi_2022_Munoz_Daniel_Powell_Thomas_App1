//
//  Standalone_AppApp.swift
//  Standalone_App
//
//  Created by Daniel Munoz on 1/23/23.
//

import SwiftUI

@main
struct Standalone_AppApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
