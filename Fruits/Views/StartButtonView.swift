//
//  StartButtonView.swift
//  Fruits
//
//  Created by Samroz Javed on 26/07/2022.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnboarding") var isOnBoarding: Bool?
    var body: some View {
        Button(action: {
            isOnBoarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }//: HSTACK
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }
        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
