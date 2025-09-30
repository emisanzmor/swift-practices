//
//  VideoPlayerViewModel.swift
//  VideoPlayerApp
//
//  Created by Emi Sanzmor on 09/09/25.
//

import Foundation
import AVKit

class VideoPlayerViewModel: ObservableObject {
    @Published var player: AVPlayer?
    
    init() {
        if let videoURL = Bundle.main.url(forResource: "Video", withExtension: "mp4") {
            player = AVPlayer(url: videoURL)
        }
        
    }
    
    func play() {
        player?.play()
    }
    
    func pause() {
        player?.pause()
    }
   
    
}
