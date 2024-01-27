//
//  RipeningView.swift
//  Avocados
//
//  Created by Nicolai Bodean on 27.01.2024.
//

import SwiftUI

struct RipeningView: View {
    
    var ripening: Ripening
    
    @State private var slidingAnimation = false
    
    var body: some View {
        VStack {
            Image(ripening.image)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .background(
                Circle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 110, height: 110, alignment: .center)
                )
                .background(
                Circle()
                    .fill(Color("ColorAppearanceAdaptive"))
                    .frame(width: 120, height: 120, alignment: .center)
                )
            .zIndex(1)
            .animation(Animation.easeInOut(duration: 1))
            .offset(y: slidingAnimation ? 5 : -55)
            .offset(y: 55)
            
            VStack(alignment: .center, spacing: 10) {
                //Stage
                VStack(alignment: .center, spacing: 0) {
                    Text(ripening.stage)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                    
                    Text("STAGE")
                        .font(.system(.body, design: .serif))
                        .fontWeight(.heavy)
                }
                .foregroundStyle(Color("ColorGreenMedium"))
                .padding(.top, 64)
                .frame(width: 180)
                
                //Title
                Text(ripening.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(Color("ColorGreenMedium"))
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                    RoundedRectangle(cornerRadius: 12)
                   
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorGreenLight")]), startPoint: .top, endPoint: .bottom))
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                //Description
                Spacer()
                Text(ripening.description)
                    .foregroundStyle(Color("ColorGreenDark"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                Spacer()
                
                
                //Ripeness
                Text(ripening.ripeness.uppercased())
                    .foregroundStyle(.white)
                    .font(.system(.callout, design: .serif))
                    .fontWeight(.bold)
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal, 0)
                    .frame(width: 185)
                    .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenDark")]), startPoint: .top, endPoint: .bottom))
                        .shadow(color: Color("ColorTrasnparentLight"), radius: 6, x: 0, y: 6)
                    )
                
                //Instruction
                Text(ripening.instruction)
                    .font(.footnote)
                    .foregroundStyle(Color("ColorGreenLight"))
                    .fontWeight(.bold)
                    .lineLimit(3)
                    .frame(width: 160)
                    Spacer()
                
            }
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 485, alignment: .center)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")]), startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(20)
        }
        .ignoresSafeArea(.all)
        .onAppear(perform: {
            self.slidingAnimation.toggle()
        })
    }
}

#Preview {
    RipeningView(ripening: ripeningData[1])
}
