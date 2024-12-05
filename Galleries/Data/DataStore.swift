//
//  DataStore.swift
//  Galleries
//
//  Created by Emir Boeev on 29/11/2024.
//

import Foundation

@Observable
class DataStore {
    var galleries : Galleries
    private var _selectedGallery : Gallery?
   
    var selectedArtist : Artist?
    var selectedArtwork : Artwork?
    
    init() {
        galleries = load("galleries.json")
    }
    
    var selectedGallery : Gallery? {
        get {
            return _selectedGallery
        }
        
        set {
            _selectedGallery = newValue
        }
    }
    

}
