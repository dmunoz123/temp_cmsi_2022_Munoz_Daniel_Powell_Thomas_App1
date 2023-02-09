//
//  Games.swift
//  Standalone_App
//
//  Created by Daniel Munoz on 2/6/23.
//

import Foundation
import SwiftUI

struct Games: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var genre: String
    var release_date: String
    var description: String
    var source: String
    var isFavorite: Bool
    
    private var imageName: String
        var image: Image {
            Image(imageName)
        }
}
