//
//  ContentView.swift
//  OnBoardingFlow
//
//  Created by Joshua Renema on 2024-08-11.
//

import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomePage()
            FeaturesPage()
        }
        .background(Gradient(colors: gradientColors))
        .tabViewStyle(.page)
        .foregroundStyle(.white)
        
    }
}

#Preview {
    ContentView()
}
