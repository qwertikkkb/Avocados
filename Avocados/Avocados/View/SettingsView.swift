//
//  SettingsView.swift
//  Avocados
//
//  Created by Nicolai Bodean on 25.01.2024.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var enableNotification = true
    @State private var backgroundRefresh = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("AVOCADOS".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                .foregroundStyle(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form {
                // Section N1
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable Notification")
                    }
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background Refresh")
                    }
                }
                //Section N2
                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack {
                            Text("Product").foregroundStyle(.green)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility").foregroundStyle(.green)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack {
                            Text("Developer").foregroundStyle(.green)
                            Spacer()
                            Text("Nicolai Bodean")
                        }
                        HStack {
                            Text("Website").foregroundStyle(.green)
                            Spacer()
                            Text("Apple.com Recipes")
                        }
                        HStack {
                            Text("Version").foregroundStyle(.green)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal Message").foregroundStyle(.gray)
                            Spacer()
                            Text("Have a nice day!")
                        }
                    }
                   
                 
                }
            }
            
        }
        .frame(maxWidth: 640)
    }
}

#Preview {
    SettingsView()
}
