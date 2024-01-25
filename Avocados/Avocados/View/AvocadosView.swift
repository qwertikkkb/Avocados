//
//  AvocadosView.swift
//  Avocados
//
//  Created by Nicolai Bodean on 25.01.2024.
//

import SwiftUI

struct AvocadosView: View {
    
    @State private var pulsateAnimation = false
    
    var body: some View {
        VStack {
            VStack{
                Spacer()
                
                
                Image("avocado")
                    .resizable()
                    .frame(width: 240, height: 240, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                    .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
                    .opacity(self.pulsateAnimation ? 1 : 0.9)
                    .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                
                VStack {
                    Text("Avocados".uppercased())
                        .font(.system(size: 42,weight: .bold, design: .serif))
                        .foregroundStyle(.white)
                        .padding()
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 4, x: 0, y: 4)
                    
                    Text("""
    Creamy, green, and full of nutrients! 
    Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes
    for breakfast, lunch, dinner & more!
    """)
                    .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundStyle(Color("ColorGreenLight"))
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                    .frame(maxWidth: 640, minHeight: 120)
                    
                }
                .padding()
                
                Spacer()
            }//Vstack
            .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
             
        )
            .ignoresSafeArea(.all)
            .onAppear(perform: {
                self.pulsateAnimation.toggle()
            })
        }
     
    }
}

#Preview {
    AvocadosView()
}
