//
//  GalleryTabs.swift
//  Galleries
//
//  Created by Emir Boeev on 29/11/2024.
//

import SwiftUI

struct GalleryTabs: View {
    var body: some View {
        TabView {
            Tab {
               
            } label: {
                Image(systemName: "building.columns.fill").resizable().frame(width: 10, height: 10)
                Text("Galleries")
            }
            Tab {
               
            } label: {
                Image(systemName: "paintpalette.fill")
                    .resizable().frame(width: 10, height: 10)
                Text("No gallery")
            }

        }
    }
}

#Preview {
    GalleryTabs()
}
