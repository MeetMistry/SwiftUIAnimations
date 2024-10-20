//
//  ControlAnimation.swift
//  SwiftUIAnimation
//
//  Created by Meet Mistry on 20/10/24.
//

import SwiftUI

struct ControlAnimation: View {
    @State private var enabled = false
    
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .animation(nil, value: enabled)
        .background(enabled ? .blue : .red)
        .foregroundStyle(.white)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        .animation(.spring(duration: 1, bounce: 0.6), value: enabled)
    }
}

#Preview {
    ControlAnimation()
}
