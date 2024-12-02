//
//  GalleryTabs.swift
//  Galleries
//
//  Created by Emir Boeev on 29/11/2024.
//

import SwiftUI

struct GalleryTabs: View {
    @State var dataStore = DataStore()
    @State var pathStore = PathStore()
    var body: some View {
        TabView {
            Tab {
                GallerySelectionView()
            } label: {
                Image(systemName: "building.columns.fill").resizable().frame(width: 10, height: 10)
                Text("Galleries")
            }
            Tab {
                if dataStore.selectedGallery == nil {
                    Text("No selected gallery")
                }
                else {
                    GalleryContentView()
                }
               
            } label: {
                Image(systemName: "paintpalette.fill")
                    .resizable().frame(width: 10, height: 10)
                if dataStore.selectedGallery == nil {
                    Text("No gallery")
                }
                else {
                    Text(dataStore.selectedGallery!.name)
                }
                
            }

        }.environment(dataStore).environment(pathStore)
    }
}

#Preview {
    GalleryTabs()
}
