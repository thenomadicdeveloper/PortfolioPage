//
//  ContentView.swift
//  PortfolioPage
//
//  Created by Davin Henrik on 1/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HomeView()
        }
        .frame(minWidth: 1000, minHeight: 800)
    }
}

extension View {
    func animatableGradient(fromGradient: Gradient, toGradient: Gradient, progress: CGFloat) -> some View {
        self.modifier(AnimatableGradientModifier(fromGradient: fromGradient, toGradient: toGradient, progress: progress))
    }
}

struct AnimatableGradientModifier: AnimatableModifier {
    let fromGradient: Gradient
    let toGradient: Gradient
    var progress: CGFloat = 0.0
 
var animatableData: CGFloat {
       get { progress }
       set { progress = newValue }
   }

   func body(content: Content) -> some View {
       var gradientColors = [Color]()

       for i in 0..<fromGradient.stops.count {
           let fromColor = NSColor(fromGradient.stops[i].color)
           let toColor = NSColor(toGradient.stops[i].color)

           gradientColors.append(colorMixer(fromColor: fromColor, toColor: toColor, progress: progress))
       }

       return LinearGradient(gradient: Gradient(colors: gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
   }

   func colorMixer(fromColor: NSColor, toColor: NSColor, progress: CGFloat) -> Color {
       guard let fromColor = fromColor.cgColor.components else { return Color(fromColor) }
       guard let toColor = toColor.cgColor.components else { return Color(toColor) }

       let red = fromColor[0] + (toColor[0] - fromColor[0]) * progress
       let green = fromColor[1] + (toColor[1] - fromColor[1]) * progress
       let blue = fromColor[2] + (toColor[2] - fromColor[2]) * progress

       return Color(red: Double(red), green: Double(green), blue: Double(blue))
   }
}

    struct SizePreferenceKey: PreferenceKey {
        static var defaultValue: CGFloat = .zero
        static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
            value = min(value, nextValue())
        }
    }
