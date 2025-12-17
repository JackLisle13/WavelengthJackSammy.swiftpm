import SwiftUI

struct ContentView: View {
    
    @AppStorage("highscore") var highscore = 0
    
    @State private var path = NavigationPath()
    @State private var totalScore = 0

    
    var body: some View {
        NavigationStack(path: $path){//looked up path thing
            VStack {
                Spacer()
                
                Text("Frequency")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.cyan)
                    .padding(.bottom, 50)
                
                
                Button {
                    path.append("passPhone")
//                    PassPhoneView(playernum: 1, path: $path)
//                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Start Game")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(.cyan)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .bold()
                }
                
                Spacer()
                
                Text("Highscore: \(highscore)")
                    .font(.title)
                    .foregroundStyle(.cyan)
                    .bold()
            } //looked up nav destinations below, its a lot but I spent so long on it and it wasnt working
            .navigationDestination(for: String.self) { route in
                          if route == "passPhone" {
                              PassPhoneView(playernum: 1, path: $path)
                          }
                      }
                      .navigationDestination(for: RangeRoute.self) { route in
                          RangeView(playerNum: route.playerNum, path: $path, totalScore: totalScore)
                      }
                      .navigationDestination(for: RangeToGuessRoute.self) { route in
                          GuessView(random: route.random,
                                    playerNum: route.playerNum,
                                    prompts: route.prompts,
                                    offset: route.offset,
                                    path: $path,
                                    totalScore: $totalScore)
                      }
                      .navigationDestination(for: GuessToPointsRoute.self) { route in
                          PointsView(guess: route.guess,
                                     random: route.random,
                                     playerNum: route.playerNum,
                                     prompts: route.prompts,
                                     offset: route.offset,
                                     path: $path,
                                     totalScore: $totalScore)
                      }
                  }
              }
          }
