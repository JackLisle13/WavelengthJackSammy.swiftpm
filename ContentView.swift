import SwiftUI

struct ContentView: View {
    
    @State var highscore = 0
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path){//looked up path thing
            VStack {
                Spacer()
                
                Text("Frequency")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.cyan)
                    .padding(.bottom, 50)
                
                
                NavigationLink {
                    PassPhoneView(playernum: 1, path: $path)
                        .navigationBarBackButtonHidden(true)
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
            }
        }
    }
}
