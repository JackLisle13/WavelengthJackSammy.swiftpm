//
//  SwiftUIView.swift
//  WavelengthJackSammy
//
//  Created by SAMANTHA KOSCIELSKI on 12/15/25.
//

import SwiftUI

struct PointsView: View {
    
    @State var guess: Double
    
    @State var random: Double
    
    @State var playerNum: Int
    
    @State var prompts: Prompts
    
    @State var offset: Double
    
    @State var points = 0
    
    var body: some View {
        NavigationStack{
            VStack {
                Spacer()
                
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
                    
                    Slider(value: $guess, in: 0...100)
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
                    .offset(x: offset)
                    
                    
                    
                }
                
                
                HStack{
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
                
                Text("You got \(points) points")
                    .font(.title)
                    .foregroundStyle(.cyan)
                    .bold()
                
                
                Spacer()
                
                NavigationLink {
                    if (playerNum == 1){
                        PassPhoneView(playernum: 2)
                            .navigationBarBackButtonHidden(true)
                    }
                    else{
                        PassPhoneView(playernum: 1)
                            .navigationBarBackButtonHidden(true)
                    }
                } label: {
                    Text("Next Question")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(.cyan)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .bold()
                }
            }
        }
        
        .onAppear() {
            getPoints()
        }

    }
    
    func getPoints() {
        if guess <= random + 30 && guess >= random - 30 {
            points += 3
        }
        else {
            if guess <= random + 60 && guess >= random - 60 {
                points += 2
            }
            else {
                if guess <= random + 90 && guess >= random - 90 {
                    points += 1
                }
            }
        }
    }
    
}

#Preview {
    PointsView(guess: 74.0, random: 45.0, playerNum: 2, prompts: Prompts(), offset: 0.0)
}
