//
//  ContentView.swift
//  MultimediaApp
//
//  Created by Emi Sanzmor on 08/09/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var songViewModel = SongViewModel()
    
    var body: some View {
        VStack {
            
            Button(action: {songViewModel.playSong()}) {
                Image("josetorresimg")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    
                    
                    
                    
                    
                    
            }.shadow(color: .blue.opacity(0.1), radius: 30)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
