import SwiftUI

struct ContentView: View {
    
    @State var highscore = 0
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Frequency")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.cyan)
                
                Spacer()
                
                NavigationLink {
                    PassPhoneView(playernum: 1)
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Start Game")
                        .font(.title)
                        .foregroundColor(.white)
                        .background(.cyan)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .bold()
                }
                
                Spacer()
                
                Text("Highscore: \(highscore)")
                    .font(.title)
                    .foregroundStyle(.cyan)
                    .bold()
            }
        }
    }
}
