//
//  SwiftUIView.swift
//  WavelengthJackSammy
//
//  Created by SAMANTHA KOSCIELSKI on 12/11/25.
//

import SwiftUI

struct GuessView: View {
    
    @State var random: Int
    
    @State var guess = 1.0
    
    @State var playerNum: Int
    
    @State var prompts: Prompts
    
    var body: some View {
        VStack {
            
            Text("Player \(playerNum)")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.cyan)
            
            Text("Your Guess: \(String(format: "%.0f", guess))")
                .font(.title2)
                .bold()
                .foregroundStyle(.cyan)
            
            Slider(value: $guess, in: 1...100, step: 1)
            
            HStack {
                Text("\(prompts.randomArray[0])")
                    .bold()
                    .foregroundStyle(.cyan)
                    .font(.title2)
                
                Spacer()
                
                Text("\(prompts.randomArray[1])")
                    .bold()
                    .foregroundStyle(.cyan)
                    .font(.title2)
            }
            
            Button() {
                
            } label: {
                Text("Submit")
                    .font(.title2)
                    .bold()
                    .foregroundStyle(.white)
                    .background(.cyan)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
            }
            
        }
        
    }
}

#Preview {
    GuessView(random: 74, playerNum: 2, prompts: Prompts())
}
