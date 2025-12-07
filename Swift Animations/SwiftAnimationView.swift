//
//  ContentView.swift
//  Swift Animations
//
//  Created by Samuel Bruton on 07/12/2025.
//

import SwiftUI

struct SwiftAnimationView: View {
    // Animation state
    @State private var isAnimating = false
    @State private var navigateToNextScreen = false
        
    // Door-like aspect ratio (width:height approximately 1:2)
    private let rectangleWidth: CGFloat = 20
    private let rectangleHeight: CGFloat = 80
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Background
                Color.black
                    .ignoresSafeArea()
                
                Image(systemName: "magicmouse.fill")
                // Animated Rectangle
                //            Rectangle()
                //                .fill(
                //                    .white
                //                    LinearGradient(
                //                        gradient: Gradient(colors: [. blue, .purple]),
                //                        startPoint: .topLeading,
                //                        endPoint: .bottomTrailing
                //                    )
                //                )
                //                .frame(
                //                    width: isAnimating ? UIScreen.main.bounds.width * 2 : rectangleWidth,
                //                    height: isAnimating ? UIScreen.main.bounds.height * 2 : rectangleHeight
                //                )
                    .font(.system(size: 100))
                    .foregroundColor(.white)
                    .scaleEffect(isAnimating ? 9 : 1) // increases scale/size
                //.opacity(isAnimating ? 0.3 : 1) // changes opacity when animating
                    .animation(
                        .easeInOut(duration: 2.0), // animation type
                        value: isAnimating // triggers animation when changes
                    )
            }
            .ignoresSafeArea()
            .onTapGesture {
                triggerAnimation()
            }
            .navigationDestination(isPresented: $navigateToNextScreen) {
                NextScreen()
            }
        }
    }
    
    private func triggerAnimation() {
        // Prevent multiple taps while animating
        guard !isAnimating else { return }
            
        // Start animation
        isAnimating = true
            
        // Reset after animation completes
        // creates a SetTimeout-like behaviour to update isAnimating
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            navigateToNextScreen = true // sets up to auto navigate to next View
            isAnimating = false // resets animation and reverses the effect
        }
    }
}

#Preview {
    SwiftAnimationView()
}
