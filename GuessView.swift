//
//  SwiftUIView.swift
//  WavelengthJackSammy
//
//  Created by SAMANTHA KOSCIELSKI on 12/9/25.
//

import SwiftUI

struct GuessView: View {
    
    @State var playerNum: Int
    
    var body: some View {
        VStack {
            Text("Player \(playerNum)")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.cyan)
            
            ZStack {
                Circle()
                    .stroke(.cyan, lineWidth: 15)
                
                Rectangle()
                    .foregroundStyle(.white)
                    .offset(x: 0, y: 340)
                
                Rectangle()
                    .foregroundStyle(.cyan)
                    .frame(height: 16)
            }
            
            Button() {
                playerNum = 2
            } label: {
                Text("Ready")
                    .font(.title)
                    .foregroundStyle(.white)
                    .background(.cyan)
                    .bold()
                    .clipShape(RoundedRectangle(cornerRadius: 5))
            }
            
        }
        
    }
}

#Preview {
    GuessView(playerNum: 1)
}
