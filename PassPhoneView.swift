//
//  SwiftUIView.swift
//  WavelengthJackSammy
//
//  Created by JACKSON LISLE on 12/9/25.
//

import SwiftUI

struct PassPhoneView: View {
    
    var playernum: Int
    
    @State var totalScore = 0
    
    var body: some View {

        VStack{
            Spacer()
            Text("Pass the Phone to Player \(playernum)")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.cyan)
                .multilineTextAlignment(.center)
                .padding(.bottom, 20)
            
            
            NavigationLink() {
                RangeView(playerNum: playernum)
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
            
        }
    }
}

#Preview {
    PassPhoneView(playernum: 1)
}
