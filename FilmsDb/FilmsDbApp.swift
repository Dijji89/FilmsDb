//
//  FilmsDbApp.swift
//  FilmsDb
//
//  Created by Nastassia on 17.10.24.
//

import FirebaseCore
import SwiftUI

@main
struct FilmDbApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

