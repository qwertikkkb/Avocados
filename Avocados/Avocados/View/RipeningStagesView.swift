//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Nicolai Bodean on 25.01.2024.
//

import SwiftUI

struct RipeningStagesView: View {
    
    var ripeningStages: [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment:.center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                    RipeningView(ripening: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        .ignoresSafeArea(.all)
    }
        
}

#Preview {
    RipeningStagesView(ripeningStages: ripeningData)
}
