//
//  SwiftUIView.swift
//  WavelengthJackSammy
//
//  Created by JACKSON LISLE on 12/9/25.
//

import SwiftUI

struct PassPhoneView: View {

    var playernum: Int
    @Binding var path: NavigationPath

    var body: some View {

        NavigationStack(path: $path) {
            VStack {
                Spacer()
                Text("Pass the Phone to Player \(playernum)")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.cyan)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)

                NavigationLink {
                    RangeView(playerNum: playernum, path: $path)
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Ready")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(.cyan)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .bold()
                }

                Spacer()
                
                
                Button{
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

        }
    }
}

#Preview {
    PassPhoneView(playernum: 1, path: .constant(NavigationPath()))
}
