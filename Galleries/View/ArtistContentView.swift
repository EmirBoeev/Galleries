//
//  ArtistContentView.swift
//  Galleries
//
//  Created by emir.boeev on 02/12/2024.
//

import SwiftUI

struct ArtistContentView: View {
    @Environment(DataStore.self) var dataStore
    @Environment(PathStore.self) var pathStore
    var body: some View {
        @Bindable var _dataStore = dataStore
        @Bindable var _pathStore = pathStore

            VStack {
                //NavigationStack(path: $_pathStore.path) {
                    
                
                if _dataStore.selectedArtist != nil {
                    Text(_dataStore.selectedArtist!.name).foregroundStyle(Color("TextColor")).font(.title)
                    Divider().foregroundStyle(Color("TextColor"))
                    Text(_dataStore.selectedArtist!.nationality)
                    Text(_dataStore.selectedArtist!.style)
                    Text(_dataStore.selectedArtist!.description).foregroundStyle(.gray).font(.system(size: 10))
                    Divider().foregroundStyle(Color("TextColor"))
                    //Divider().foregroundStyle(Color("TextColor"))
                    Text("List of art").foregroundStyle(Color("TextColor"))
                 
                        List(_dataStore.selectedArtist!.artworks, id: \.self, selection: $_dataStore.selectedArtwork) { art in
                            NavigationLink(value: Route.artwork(art)) {
                                VStack {
                                    Text(art.title)
                                    Text(art.description).foregroundStyle(.gray).truncationMode(.tail)
                                }
                            }
                            
                            
                        }/*.navigationDestination(for: Route.self) { route in
                            switch route {
                            case .artist(let artist):
                                ArtistContentView()
                            case .gallery(let gallery):
                                GallerySelectionView()
                            case .artwork(let artwork):
                                ArtworkContentView()
                            }

                            }*/
                    
                }
                }
                }
        
        
            
        }
        
    //}


#Preview {
    ArtistContentView()
}
