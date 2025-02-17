//
//  SpinAnimation.swift
//  SwiftUIAnimation
//
//  Created by Meet Mistry on 20/10/24.
//

import SwiftUI

struct SpinAnimation: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap Me") {
            withAnimation(.spring(duration: 1, bounce: 0.5)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .rotation3DEffect(
            .degrees(animationAmount),
            axis: (x: 10, y: 10, z: 0)
        )
    }
}

#Preview {
    SpinAnimation()
}
