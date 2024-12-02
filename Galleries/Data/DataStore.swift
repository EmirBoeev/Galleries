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
    var selectedGallery : Gallery?
    
    init() {
        galleries = load("galleries.json")
    }
    
    
}
