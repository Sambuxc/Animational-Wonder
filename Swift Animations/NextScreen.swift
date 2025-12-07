//
//  NextScreen.swift
//  SwiftAnimationDemo
//
//  The screen shown after the animation completes
//

import SwiftUI

struct NextScreen: View {
    @Environment(\.dismiss) private var dismiss
    // State for tracking wand position
    @State private var wandOffset = CGSize.zero
    
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
                    .font(.system(size: 80))
                    .foregroundColor(.white)
                    .offset(wandOffset) // apply value of where the user has dragged it
                    .rotationEffect(.degrees(wandOffset.width / 5))
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                wandOffset = gesture.translation
                            }
                            .onEnded { _ in
                                withAnimation(.bouncy()) {
                                    wandOffset = .zero
                                }
                            }
                        
                    )
                
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
                
                Image("flower-of-life-golden")
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
