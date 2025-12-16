//
//  SwiftUIView.swift
//  WavelengthJackSammy
//
//  Created by SAMANTHA KOSCIELSKI on 12/11/25.
//

import SwiftUI

struct GuessView: View {
    
    @State var random: Double
    
    @State var guess = 1.0
    
    @State var playerNum: Int
    
    @State var prompts: Prompts
    
    @State var offset: Double
    
    @Binding var path: NavigationPath
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
            VStack {
                
                Text("Player \(playerNum)")
                    .font(.largeTitle)
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
                
                NavigationLink() {
                    PointsView(guess: guess, random: random, playerNum: playerNum, prompts: prompts, offset: offset, path: $path)
                        .navigationBarBackButtonHidden(true)
                    
                } label: {
                    Text("Submit")
                        .font(.title)
                        .bold()
                        .foregroundStyle(.white)
                        .background(.cyan)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                }
                
            }
        
    }
}

#Preview {
    GuessView(random: 74.0, playerNum: 2, prompts: Prompts(), offset: 0.0, path: .constant(NavigationPath()))
}
