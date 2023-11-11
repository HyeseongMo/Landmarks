//
//  PageView.swift
//  Landmarks
//
//  Created by Paul Mo on 2023/11/11.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
        
        //        Experiment: Button with Image
        //        Button {
        //            if (currentPage < pages.count - 1) {
        //                currentPage += 1
        //            } else {
        //                currentPage = 0
        //            }
        //        } label: {
        //            ZStack(alignment: .trailing) {
        //                PageViewController(pages: pages, currentPage: $currentPage)
        //                Image(systemName: "chevron.right")
        //                    .foregroundColor(.white)
        //                    .padding(.trailing)
        //            }
        //        }
    }
}

#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
        .aspectRatio(3 / 2, contentMode: .fit)
}
