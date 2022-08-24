//
//  ContentView.swift
//  Fruits
//
//  Created by Samroz Javed on 26/07/2022.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isOnboarding") var isOnBoarding: Bool = false
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { item in
                    //MARK: NAVIGATION
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSettings){
                        SettingsVIew()
                    }
            )
        }//: NAVIGATION VIEW
        //MARK: NAVIGATION STYLE FOR IPADS
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
