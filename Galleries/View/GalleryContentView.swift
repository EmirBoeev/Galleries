//
//  GalleryContentView.swift
//  Galleries
//
//  Created by emir.boeev on 02/12/2024.
//

import SwiftUI

struct GalleryContentView: View {
    @Environment(DataStore.self) var dataStore
    @Environment(PathStore.self) var pathStore
    var body: some View {
        @Bindable var _dataStore = dataStore
        @Bindable var _pathStore = pathStore
        VStack {
            Text(_dataStore.selectedGallery!.name).foregroundStyle(Color("TextColor")).font(.title)
            Divider().foregroundStyle(Color("TextColor"))
            Text(_dataStore.selectedGallery!.location)
            Text(_dataStore.selectedGallery!.description).foregroundStyle(.gray).font(.system(size: 10))
            Divider().foregroundStyle(Color("TextColor"))
            //Divider().foregroundStyle(Color("TextColor"))
            Text("List of artists").foregroundStyle(Color("TextColor"))
            VStack {
                NavigationStack(path: $_pathStore.path) {
                    List(_dataStore.selectedGallery!.artists, id: \.self, selection: $_dataStore.selectedArtist) { artist in
                        
                        NavigationLink(value: Route.artist(artist)) {
                            VStack {
                                Text(artist.name)
                                Text(artist.nationality).foregroundStyle(.gray)
                            }
                        }
                        
                        
                    }.padding(20).cornerRadius(50).navigationDestination(for: Route.self) { route in
                        switch route {
                        case .artist(let artist):
                            ArtistContentView()
                        case .gallery(let gallery):
                            Text("Gallery")
                        case .artwork(let artwork):
                            Text("Artwork")
                        }
                }
                }
                
            }
        }.padding()
    }
}

#Preview {
    GalleryContentView()
}
