//
//  GameList.swift
//  Standalone_App
//
//  Created by Daniel Munoz on 2/6/23.
//

import SwiftUI

struct GameList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredGames: [Games] {
        modelData.games.filter { game in
            (!showFavoritesOnly || game.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }
                
                ForEach(filteredGames) { game in
                    NavigationLink {
                        GameDetail(game: game)
                    } label: {
                        GameRow(game: game)
                    }
                }
            }
            .navigationTitle("Top Nintendo Games")
        }
    }
}

struct GameList_Previews: PreviewProvider {
    static var previews: some View {
        GameList()
            .environmentObject(ModelData())
            .transition(.slide)
    }
}
