//
//  HeaderView.swift
//  Avocados
//
//  Created by Nicolai Bodean on 25.01.2024.
//

import SwiftUI

struct HeaderView: View {
    
    @State private var showHeadline = false
    
    var slideInAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    var body: some View {
        ZStack {
            Image("avocado-slice-1")
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("Avocado")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    
                    Text("Avocados are a powerhouse ingredients at my meal for anyone.")
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(.white)
                        .shadow(radius: 3)
                       
                }//Vstack
                .padding(.vertical,0)
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
                .background(
                Color("ColorBlackTransparentLight")
            )
            }//Hstack
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -66, y: showHeadline ? 75 : 220)
            .animation(slideInAnimation)
            .onAppear(perform: {
                self.showHeadline.toggle()
            })
            
            
        }//ZStack
        .frame(width: 480, height: 320, alignment: .center)
    }
}

#Preview {
    HeaderView()
}
