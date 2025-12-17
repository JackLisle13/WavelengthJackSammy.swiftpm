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
    
    @Binding var path: NavigationPath
    
    @AppStorage("highscore") var highscore = 0
    
    @Binding var totalScore: Int
    
    var body: some View {
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
                
                Text("You got \(points) point(s)")
                    .font(.title)
                    .foregroundStyle(.cyan)
                    .bold()
                
                Text("Current Score: \(totalScore)")
                    .font(.title)
                    .foregroundStyle(.cyan)
                    .bold()
                
                
                Spacer()
                
                Button {
                    if playerNum == 1{
                        playerNum = 2
                    }
                    else{
                        playerNum = 1
                    }
                    path.append("passPhone")
//                    PassPhoneView(playernum: playerNum, path: $path, totalScore: totalScore)
//                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Next Question")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(.cyan)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .bold()
                }
                
                 Button{
                     totalScore = 0
                    path = NavigationPath()
                    
                }label:{
                    Text("End Game")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(.cyan)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .bold()
                }
            }
        
        .onAppear() {
            getPoints()
        }

    }
    
    func getPoints() {
        if guess <= random + 20 && guess >= random - 20 {
            if guess <= random + 10 && guess >= random - 10 {
                if guess <= random + 5 && guess >= random - 5 {
                    points += 3
                    totalScore += 3
                }
                else {
                    points += 2
                    totalScore += 2
                }
            }
            else {
                points += 1
                totalScore += 1
            }
        }
        
        if totalScore > highscore {
            highscore = totalScore
        }

    }
    
}

#Preview {
    PointsView(guess: 74.0, random: 45.0, playerNum: 2, prompts: Prompts(), offset: 0.0, path: .constant(NavigationPath()), totalScore: .constant(0))
}
