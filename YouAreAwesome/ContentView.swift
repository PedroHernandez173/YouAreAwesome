//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Student2 on 1/27/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageString = ""
    var body: some View {
        
        VStack {
            Spacer()
            
            Image(systemName: imageString)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundStyle(.black)
            
            Spacer()
            
            
            Button("Press Me!") {
                let message1 = "Sei Fantastico!"
                let message2 = "Sei Grande!"
                let imageString1 = "hand.thumbsup"
                let imageString2 = "sun.max.fill"
                
                if message == message1{
                    message = message2
                    imageString = imageString2
                } else {
                    message = message1
                    imageString = imageString1
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
