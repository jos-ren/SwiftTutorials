//
//  FeaturesPage.swift
//  OnBoardingFlow
//
//  Created by Joshua Renema on 2024-08-12.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Features")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom)
                .padding(.top, 100)
            
            FeatureCard(iconName: "person.2.crop.square.stack.fill",
                        description:  "A multiline description about a feature paired with the image on the left.")
            
            FeatureCard(iconName: "sun.min",
                        description:  "I love sunshine")
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    FeaturesPage()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
}
