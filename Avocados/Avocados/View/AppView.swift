//
//  AppView.swift
//  Avocados
//
//  Created by Nicolai Bodean on 25.01.2024.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        
        VStack {
            TabView {
                AvocadosView()
                    .tabItem {
                        Image("tabicon-branch")
                        Text("Avocados")
                    }
                ContentView()
                    .tabItem({
                        Image("tabicon-book")
                        Text("Recipes")
                    })
                RipeningStagesView()
                    .tabItem {
                        Image("tabicon-avocado")
                        Text("Ripening")
                    }
                SettingsView()
                    .tabItem {
                        Image("tabicon-settings")
                        Text("Settings")
                    }
            }//TabView
            .background(Color.white)
            .accentColor(Color.primary)
            
        }//Vstack
      
    }
}

#Preview {
    AppView()
}
