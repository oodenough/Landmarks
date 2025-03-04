//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Saul Goodman on 2/27/25.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
