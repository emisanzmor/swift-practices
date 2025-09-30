//
//  SongViewModel.swift
//  MultimediaApp
//
//  Created by Emi Sanzmor on 08/09/25.
//

import AVFoundation

class SongViewModel: ObservableObject {
    @Published private var player: AVAudioPlayer?
    
    func playSong() {
        if let url = Bundle.main.url(forResource: "josetorres", withExtension: "mp3") {
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player?.play()
            } catch {
                print("Error playing the song \(error.localizedDescription)")
            }
        }
    }
}
