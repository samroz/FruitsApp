//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Samroz Javed on 29/07/2022.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var value: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    var body: some View {
        VStack {
            
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if value != nil {
                    Text(value!)
                } else if linkLabel != nil && linkDestination != nil{
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
        .frame(height: 60)
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", value: "John / Jane")
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            SettingsRowView(name: "Website", linkLabel: "SwiftUI MasterClass", linkDestination: "swiftuimasterclass.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
