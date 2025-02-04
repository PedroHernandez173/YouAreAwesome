//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Student2 on 1/27/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "i Am A Programmer!"
    var body: some View {
        
        VStack {
            Spacer()
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundStyle(.black)
            
            Spacer()
            
            HStack {
                Button("Awesome") {
                    print(message)
                    message = "Awesome!"
                }
                
                Button("Great") {
                    print(message)
                    message = "Great!"
                }
                
            }.buttonStyle(.borderedProminent)
                .font(.title2)
                .tint(.orange)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
