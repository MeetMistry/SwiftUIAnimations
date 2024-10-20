//
//  ShowHideWithAnimation.swift
//  SwiftUIAnimation
//
//  Created by Meet Mistry on 20/10/24.
//

import SwiftUI

struct ShowHideWithAnimation: View {
    @State var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(
                        .asymmetric(insertion: .scale, removal: .opacity)
                    )
            }
        }
    }
}

#Preview {
    ShowHideWithAnimation()
}
