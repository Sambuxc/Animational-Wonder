//
//  NextScreen.swift
//  SwiftAnimationDemo
//
//  The screen shown after the animation completes
//

import SwiftUI

struct NextScreen: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(
                gradient: Gradient(colors: [.purple, .blue]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Image(systemName: "wand.and.rays")
                    . font(.system(size: 80))
                    .foregroundColor(.white)
                
                Spacer()
                
                Text("Welcome")
                    .fontDesign(Font.Design.rounded)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("✨\nYou've traveled through the portal into another realm. \n\n✨\n\nExplore and discover more about this magical place \n✨")
                    .font(.title3)
                    .foregroundColor(.white.opacity(0.9))
                    .multilineTextAlignment(.center)
                    . padding(. horizontal)
                
                Spacer()
                
                Image("flower-of-life")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .aspectRatio(contentMode: .fill)
            }
            .padding()
        }
    }
}

#Preview {
    NextScreen()
}
