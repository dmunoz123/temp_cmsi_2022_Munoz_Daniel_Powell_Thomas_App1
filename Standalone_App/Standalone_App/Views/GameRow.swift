//
//  GameRow.swift
//  Standalone_App
//
//  Created by Daniel Munoz on 2/6/23.
//

import SwiftUI

struct GameRow: View {
    var game: Games

    var body: some View {
        HStack {
            game.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(game.title)
            
            Spacer()
            
            if game.isFavorite {
                Image(systemName: "star.fill")
                    
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct GameRow_Previews: PreviewProvider {
    static var games = ModelData().games
    
    static var previews: some View {
        Group {
            GameRow(game: games[0])
            GameRow(game: games[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
