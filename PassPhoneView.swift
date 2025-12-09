//
//  SwiftUIView.swift
//  WavelengthJackSammy
//
//  Created by JACKSON LISLE on 12/9/25.
//

import SwiftUI

struct PassPhoneView: View {
    
    var playernum: Int
    
    var body: some View {

        VStack{
            Spacer()
            Text("Pass the Phone to Player \(playernum)")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.cyan)
                .frame(maxWidth: .infinity,  alignment: .center)
            
            Spacer()
            
            NavigationLink() {
                GuessView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                Text("Ready")
                    .font(.title)
                    .foregroundColor(.white)
                    .background(.cyan)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .bold()
            }

            
        }
    }
}

#Preview {
    PassPhoneView(playernum: 1)
}
