//
//  GameDetail.swift
//  Standalone_App
//
//  Created by Daniel Munoz on 2/6/23.
//

import SwiftUI
import AVKit

struct GameDetail: View {
    @EnvironmentObject var modelData: ModelData
    var game: Games
    
    var gameIndex: Int {
        modelData.games.firstIndex(where: { $0.id == game.id })!
    }
    
    
    var body: some View {
            ZStack{
                Image("clouds")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth: 20, maxWidth: .infinity)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    CircleImage(image: game.image)
                        .offset(y: -200)
                        .padding(.bottom, -190)
                    VStack(alignment: .leading) {
                        HStack {
                            Text(game.title)
                                .font(.title)
                            
                            FavoriteButton(isSet: $modelData.games[gameIndex].isFavorite)
                            
                        }
                            
                            HStack {
                                Text(game.genre)
                                    .font(.subheadline)
                                    .foregroundColor(.yellow)
                                
                                Spacer()
                                
                                Text(game.release_date)
                                    .font(.subheadline)
                                    .foregroundColor(.yellow)
                            }
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            
                        Divider().frame(height: 1).overlay(.red).shadow(color: .red, radius: 4)
                            
                        Text("About \(game.title)")
                                .font(.title2)
                                .bold()
                        Text(game.description)
                        }
                    .padding(.horizontal, 20)
                    }
                .navigationTitle(game.title)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct GameDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        GameDetail(game: modelData.games[1])
            .environmentObject(modelData)
            .transition(.slide)
    }
}
