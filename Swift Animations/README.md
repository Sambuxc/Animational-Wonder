# Swift Animation Demo

An iOS app showcasing Swift's animation capabilities through a focused perspective growth demo.

## Features

- 🎯 **Tap-to-Animate**: Tap anywhere on the screen to trigger the animation
- 🚪 **Door-like Rectangle**: Vertical rectangle with realistic proportions (width < height)
- 🌟 **Perspective Growth**: Smooth animation that creates the effect of traveling into the rectangle
- 🔄 **Repeatable**: Tap again after animation completes to replay

## Animation Details

The app demonstrates:
- SwiftUI's declarative animation system
- Scale transforms for perspective effect
- Frame size animations
- Opacity transitions
- Smooth easing curves for natural motion

## How to Use

1. Open the project in Xcode
2. Build and run on iOS Simulator or device (iOS 15.6+)
3. Tap anywhere on the screen
4. Watch the rectangle grow and fill the screen
5. Tap again to replay the animation

## Technical Implementation

- **Framework**: SwiftUI
- **Minimum iOS**: 15.6
- **Animation Duration**: 2 seconds
- **Animation Curve**: Ease In/Out for smooth acceleration and deceleration

## Code Structure

- `SwiftAnimationDemoApp.swift` - App entry point
- `SwiftAnimationView.swift` - Main view with animation logic
