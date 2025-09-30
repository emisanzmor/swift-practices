//
//  ContentView.swift
//  VideoPlayerApp
//
//  Created by Emi Sanzmor on 09/09/25.
//

import SwiftUI
import AVKit

struct ContentView: View {
    @StateObject private var viewModel = VideoPlayerViewModel()
    @StateObject private var audioViewModel = AudioPlayerViewModel()
    
    var body: some View {
        
        NavigationStack {
            VStack (spacing: 30){
                if let player = viewModel.player {
                    VideoPlayer(player: player)
                        .cornerRadius(20)
                        .frame(height: 250)
                }
                
                Button(action: {audioViewModel.playSong()}) {
                    Image("josetorresimg")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(20)
                       
                }
                
                
                
            }.navigationTitle("AUDIO | VIDEO PLAYER")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
