//
//  ArtworkContentView.swift
//  Galleries
//
//  Created by Emir Boeev on 05/12/2024.
//

import SwiftUI

struct ArtworkContentView: View {
    
    @Environment(DataStore.self) var dataStore
    //@Environment(PathStore.self) var pathStore
    var body: some View {
        @Bindable var _dataStore = dataStore
       // @Bindable var _pathStore = pathStore
        VStack {
            if _dataStore.selectedArtwork != nil {
                Button {
                    _dataStore.printArtist()
                } label: {
                    Text("test")
                }

                Text(_dataStore.selectedArtwork!.title).foregroundStyle(Color("TextColor")).font(.title)
                Divider().foregroundStyle(Color("TextColor"))
                Text(_dataStore.selectedArtwork!.medium)
                Text(_dataStore.selectedArtwork!.dimensions)
                Text(_dataStore.selectedArtist!.description).foregroundStyle(.gray).font(.system(size: 10))
                Divider().foregroundStyle(Color("TextColor"))
                Text("artist: \(_dataStore.selectedArtist!.name)" )
                Divider().foregroundStyle(Color("TextColor"))
                Text("List of other art").foregroundStyle(Color("TextColor"))
                VStack {
                    List(_dataStore.selectedArtist!.artworks.filter{ artwork in
                        artwork.id != _dataStore.selectedArtwork!.id
                    }, id: \.self, selection: $_dataStore.selectedArtwork) { art in
                        VStack {
                            Text(art.title)
                            Text(art.description).foregroundStyle(.gray).truncationMode(.tail)
                        }
                        
                    }.padding(20).cornerRadius(50)
                }
            }
            
        }
    }
}

#Preview {
    ArtworkContentView()
}
