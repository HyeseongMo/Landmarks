//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Paul Mo on 2023/11/09.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationSplitView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categoires.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categoires[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
                .navigationTitle("Featured")
        } detail: {
            Text("Select a Landmark")
        }
        
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
