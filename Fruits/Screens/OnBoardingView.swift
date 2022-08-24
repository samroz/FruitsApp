//
//  OnBoardingView.swift
//  Fruits
//
//  Created by Samroz Javed on 26/07/2022.
//

import SwiftUI

struct OnBoardingView: View {
    var fruits : [Fruit] = fruitsData
    var body: some View {
        TabView{
            ForEach(fruits[0...fruits.count - 1]){ fruit in
                FruitCardView(fruit: fruit)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
    }
}
