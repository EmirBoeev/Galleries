//
//  ArtistContentView.swift
//  Galleries
//
//  Created by emir.boeev on 02/12/2024.
//

import SwiftUI

struct ArtistContentView: View {
    @Environment(DataStore.self) var dataStore
    var body: some View {
        @Bindable var _dataStore = dataStore
        
        VStack {
            Text(_dataStore.selectedArtist!.name).foregroundStyle(Color("TextColor")).font(.title)
            Divider().foregroundStyle(Color("TextColor"))
            Text(_dataStore.selectedArtist!.nationality)
            Text(_dataStore.selectedArtist!.description).foregroundStyle(.gray).font(.system(size: 10))
            Divider().foregroundStyle(Color("TextColor"))
            //Divider().foregroundStyle(Color("TextColor"))
            Text("List of art").foregroundStyle(Color("TextColor"))
            VStack {
                List(_dataStore.selectedArtist!.artworks, id: \.self, selection: $_dataStore.selectedArtwork) { art in
                    VStack {
                        Text(art.title)
                        Text(art.description).foregroundStyle(.gray).frame(width: 100).truncationMode(.tail)
                    }
                    
                }.padding(20).cornerRadius(50)
            }
        }
        
    }
}

#Preview {
    ArtistContentView()
}
