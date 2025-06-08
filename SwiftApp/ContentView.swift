//
//  ContentView.swift
//  SwiftApp
//
//  Created by Bipul on 8/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isTapped = false
    @State private var isTapped2 = false
    var body: some View {
        VStack {
        
            Image("imagevai")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .cornerRadius(100)
                            .padding()
            
            Image(systemName: "cloud.sun")
                .font(.system(size: 100))
                .foregroundColor(.blue)
            Text("Hello World").font(.system(size: 20))
                .foregroundColor(.cyan)
        }
        .padding()
        
        Image(isTapped ? "imagevai" : "bipul")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .cornerRadius(100).shadow(radius: 10)
                .onTapGesture {
                    self.isTapped.toggle()
                }
        Image( systemName: isTapped2 ? "cloud.sun" :"cloud.sun.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .onTapGesture {
                    self.isTapped2.toggle()
                }
    }
}

#Preview {
    ContentView()
}
