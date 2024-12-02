//
//  PathStore.swift
//  Galleries
//
//  Created by emir.boeev on 02/12/2024.
//

import Foundation
enum Route {
    case gallery(Gallery)
    case artist(Artist)
    case artwork(Artwork)
}

@Observable
class PathStore {
    var path : [Route] = []
    
    func appendPath(route: Route) {
        path.append(route)
    }
    
    func resetPath() {
        path.removeAll()
    }
}
