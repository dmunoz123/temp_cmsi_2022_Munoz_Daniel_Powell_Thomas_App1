//
//  ContentView.swift
//  Standalone_App
//
//  Created by Daniel Munoz on 1/23/23.
//
import AVKit
import SwiftUI

struct ContentView: View {
    var body: some View {
        GameList()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .environmentObject(ModelData())
        }
    }
