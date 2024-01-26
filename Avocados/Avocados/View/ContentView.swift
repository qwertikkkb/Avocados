//
//  ContentView.swift
//  Avocados
//
//  Created by Nicolai Bodean on 25.01.2024.
//

import SwiftUI

struct ContentView: View {
    var headers: [Header] = headersData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                VStack(alignment: .center, spacing: 20) {
                     //Mark - Header
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(headers) { item in
                                HeaderView(header: item)
                            }
                           
                        }
                   }
            
             //Mark - Dishes
                    Text("Avocado Dishes")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    DishesView()
                        .frame(maxWidth: 640)
                    
                    
                     //Mark - Footer
                    
                    Text("All about avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    Text("Everything you want to know about avocados but were too afrait to ask")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.gray)
                        .frame(minHeight: 60)
                    
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

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundStyle(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

#Preview {
    ContentView(headers: headersData)
}
