//
//  GallerySelectionView.swift
//  Galleries
//
//  Created by emir.boeev on 02/12/2024.
//

import SwiftUI

struct GallerySelectionView: View {
    @Environment(DataStore.self) var dataStore
    
    var body: some View {
        @Bindable var _dataStore = dataStore
        VStack {
            List(_dataStore.galleries.galleries, id: \.self, selection: $_dataStore.selectedGallery) { gallery in
                
                VStack {
                    HStack {
                        Spacer()
                        Text(gallery.name).font(.title).foregroundStyle(Color("TextColor"))
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        Text(gallery.location)
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        Text(gallery.description).foregroundStyle(.gray).font(.system(size: 10)).frame(width: 500, height: 20).truncationMode(.tail)
                        Spacer()
                    }
                }
                
            }.padding(100).cornerRadius(50)
        }
    }
}

#Preview {
    GallerySelectionView()
}
