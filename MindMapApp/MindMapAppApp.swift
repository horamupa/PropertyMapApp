//
//  MindMapAppApp.swift
//  MindMapApp
//
//  Created by MM on 07.09.2022.
//

import SwiftUI

@main
struct MindMapAppApp: App {
    
    @StateObject private var vm = LocationViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationView()
                .environmentObject(vm)
        }
    }
}
