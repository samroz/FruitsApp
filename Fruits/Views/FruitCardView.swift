//
//  FruitCardView.swift
//  Fruits
//
//  Created by Samroz Javed on 26/07/2022.
//

import SwiftUI

struct FruitCardView: View {
    
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    
    var body: some View {
        
        ZStack {
            VStack (spacing: 20){
                //MARK: IMAGE
                
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                //MARK: TITLE
                
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                //MARK: HEADLINE
                
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                //MARK: START BUTTON
                
                StartButtonView()
                
            }//: VSTACK
        }//: ZSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(.linearGradient(Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
            .ignoresSafeArea(.all, edges: .all)
    }
}
