//
//  SwiftUIView.swift
//  WavelengthJackSammy
//
//  Created by SAMANTHA KOSCIELSKI on 12/11/25.
//

import SwiftUI

struct GuessView: View {
    
    @State var random: Int
    
    @State var guess: Double
    
    @State var playerNum: Int
    
    //@State var prompts: [Prompts]
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("Player \(playerNum)")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.cyan)
            
            Spacer()
            
            HStack {
                
            }
            
            Slider(value: $guess, in: 1...100, step: 1)
            
            Text("\(String(format: "%.0f", guess))")
                .font(.title2)
                .bold()
                .foregroundStyle(.cyan)
            
            Spacer()
            
            Button() {
                
            } label: {
                Text("Submit")
                    .font(.title2)
                    .bold()
                    .foregroundStyle(.white)
                    .background(.cyan)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
            }
            
            Spacer()
            
        }
    }
}

#Preview {
    GuessView(random: 74, guess: 1.0, playerNum: 2)
}
