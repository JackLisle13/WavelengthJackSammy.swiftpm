//
//  SwiftUIView.swift
//  WavelengthJackSammy
//
//  Created by SAMANTHA KOSCIELSKI on 12/9/25.
//

import SwiftUI

struct RangeView: View {
    
    @State var playerNum: Int
    @State var prompts = Prompts()
    
    @State var random: Double

    init(playerNum: Int) {
            _playerNum = State(initialValue: playerNum)
           _random = State(initialValue: Double.random(in: 0...100))
       } //looked up on chat for the random thing then it messed up smth else
    
    var body: some View {
        VStack {
            Text("Player \(playerNum)")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.cyan)
            
            //START FOR OTHER GUESS THING, WE WILL GO BACK IF WE HAVE TIME
//            ZStack {
//                Circle()
//                    .stroke(.cyan, lineWidth: 15)
//                
//                Rectangle()
//                    .foregroundStyle(.white)
//                    .offset(x: 0, y: 340)
//                
//                Rectangle()
//                    .foregroundStyle(.cyan)
//                    .frame(height: 16)
//            }
            ZStack{
                Slider(value: $random, in: 0...100)
                    .disabled(true)
                HStack{
                    Rectangle()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(Color(red: 0.8, green: 0.3, blue: 0.0, opacity: 0.4))
                        .padding(-10)
                    Rectangle()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(Color(red: 0.8, green: 0.7, blue: 0.0, opacity: 0.4))
                    Rectangle()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(Color(red: 0.2, green: 0.8, blue: 0.1, opacity: 0.4))
                        .padding(-10)
                    Rectangle()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(Color(red: 0.8, green: 0.7, blue: 0.0, opacity: 0.4))
                    Rectangle()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(Color(red: 0.8, green: 0.3, blue: 0.0, opacity: 0.4))
                        .padding(-10)
                    
                }
            }

            HStack{
                Text("\(prompts.randomArray[0])")
                Spacer()
                Text("\(prompts.randomArray[1])")
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
    RangeView(playerNum: 1)
}
