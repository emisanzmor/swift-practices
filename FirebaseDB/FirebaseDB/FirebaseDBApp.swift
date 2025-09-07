//
//  FirebaseDBApp.swift
//  FirebaseDB
//
//  Created by Emi Sanzmor on 07/09/25.
//

import SwiftUI
import FirebaseCore

@main
struct FirebaseDBApp: App {
    init() {
           FirebaseApp.configure()
       }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
