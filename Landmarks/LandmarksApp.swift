//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Paul Mo on 2023/11/05.
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
