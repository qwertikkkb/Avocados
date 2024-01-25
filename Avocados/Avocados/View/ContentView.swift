//
//  ContentView.swift
//  Avocados
//
//  Created by Nicolai Bodean on 25.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                VStack(alignment: .center, spacing: 20) {
                     //Mark - Header
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            HeaderView()
                        }
                   }
            
                    
                     //Mark - Footer
                    
                    Text("All about avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundStyle(Color("ColorGreenAdaptive"))
                    .padding(8)
                    Text("Everything you want to know about avocados but were too afrait to ask")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.gray)
                    
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }//Vstack
        }//ScrollView
        .ignoresSafeArea(.all)
        .padding(0)
    }
}

#Preview {
    ContentView()
}
