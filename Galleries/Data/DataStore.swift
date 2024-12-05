//
//  DataStore.swift
//  Galleries
//
//  Created by Emir Boeev on 29/11/2024.
//

import Foundation

@Observable
class DataStore {
    private var pathStore = PathStore()
    var galleries : Galleries
    private var _selectedGallery : Gallery?
   
    private var _selectedArtist : Artist?
    var selectedArtwork : Artwork?
    
    init() {
        galleries = load("galleries.json")
    }
    
    
    var selectedArtist: Artist? {
        get {
            return _selectedArtist
        }
        set {
            _selectedArtist = newValue
            
        }
    }
    var selectedGallery : Gallery? {
        get {
            return _selectedGallery
        }
        
        set {
            _selectedGallery = newValue
            pathStore.resetPath()
        }
    }
    
    func printArtist() {
        print(selectedArtist)
    }
}
