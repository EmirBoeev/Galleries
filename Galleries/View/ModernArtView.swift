//
//  ModernArtView.swift
//  Galleries
//
//  Created by emir.boeev on 02/12/2024.
//

import SwiftUI

struct ModernArtView: View {
    @Environment(DataStore.self) var dataStore
    var body: some View {
        @Bindable var _dataStore = dataStore
        VStack {
            Text(_dataStore.selectedGallery!.name).foregroundStyle(Color("TextColor")).font(.title)
            Divider().foregroundStyle(Color("TextColor"))
            Text(_dataStore.selectedGallery!.location)
            Text(_dataStore.selectedGallery!.description).foregroundStyle(.gray).font(.system(size: 10))
            Divider().foregroundStyle(Color("TextColor"))
            //Divider().foregroundStyle(Color("TextColor"))
            Text("List of artists").foregroundStyle(Color("TextColor"))
            VStack {
                List(_dataStore.selectedGallery!.artists, id: \.self, selection: $_dataStore.selectedArtist) { artist in
                    VStack {
                        Text(artist.name)
                        Text(artist.nationality).foregroundStyle(.gray)
                    }
                    
                }.padding(20).cornerRadius(50)
            }
        }
       
    }
}

#Preview {
    ModernArtView()
}
