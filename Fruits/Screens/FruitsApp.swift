//
//  FruitsApp.swift
//  Fruits
//
//  Created by Samroz Javed on 26/07/2022.
//

import SwiftUI

@main
struct FruitsApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            } else {
                ContentView()
            }
        }
    }
}
