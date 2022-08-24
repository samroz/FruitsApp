//
//  FruitNutrientView.swift
//  Fruits
//
//  Created by Samroz Javed on 28/07/2022.
//

import SwiftUI

struct FruitNutrientView: View {
    var fruit:Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "vitamins", "minerals"]
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g "){
                ForEach(0..<nutrients.count, id: \.self){ item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
                
            }
            
        }
    }
}

struct FruitNutrientView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
