//
//  AudioPlayerViewModel.swift
//  VideoPlayerApp
//
//  Created by Emi Sanzmor on 09/09/25.
//

import Foundation
import AVFoundation

class AudioPlayerViewModel: ObservableObject {
    @Published var player: AVAudioPlayer?
    func playSong() {
        if let audioUrl = Bundle.main.url(forResource: "josetorres", withExtension: "mp3") {
            do {
                player = try AVAudioPlayer(contentsOf: audioUrl)
                player?.play()
            } catch {
                print("Error playing audio file: \(error.localizedDescription)")
            }
           
        }

    }
    
}
