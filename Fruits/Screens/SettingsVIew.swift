//
//  SettingsVIew.swift
//  Fruits
//
//  Created by Samroz Javed on 28/07/2022.
//

import SwiftUI

struct SettingsVIew: View {
    @Environment (\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnBoarding: Bool = false
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    //MARK: SECTION 1
                    
                    GroupBox (
                        label:
                            SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        HStack (alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaleEffect()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9 )
                            Text("Most fruits are naturally low in fats, sodium and calories. None have cholesterol. Fruits are sources of many essential nutriets, including potasium, dietary fiber, vitamins and much more")
                                .font(.footnote)
                        }
                    }
                    
                    //MARK: SECTION 2
                    GroupBox (
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        Text("If you wish you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnBoarding){
                            if isOnBoarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous ))
                        )
                    }
                    
                    //MARK: SECTION 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        
                        SettingsRowView(name: "Developer", value: "Samroz Javed")
                        SettingsRowView(name: "Designer", value: "Roberrt Petras")
                        SettingsRowView(name: "Compatibility", value: "iOS 15")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI MasterClass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@RobertPatras", linkDestination: "twitter.com/samrozjaved1")
                        SettingsRowView(name: "SwiftUI", value: "3.0")
                        SettingsRowView(name: "Version", value: "5.1")
                        
                    }
                }
                .navigationBarTitle( Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                    
                )
                .padding()
            }
        }
        
    }
}

struct SettingsVIew_Previews: PreviewProvider {
    static var previews: some View {
        SettingsVIew()
            .preferredColorScheme(.dark)
    }
}
