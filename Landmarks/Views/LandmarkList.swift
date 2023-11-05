//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Paul Mo on 2023/11/05.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
                
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Test")
        }
        
    }
}

#Preview {
    LandmarkList()
}
