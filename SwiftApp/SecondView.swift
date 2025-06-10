//
//  SecondView.swift
//  SwiftApp
//
//  Created by Bipul on 10/6/25.
//

import SwiftUI

struct SecondView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    @State private var selected = "Baseball"
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
    @State private var id = 1

    var body: some View {
        VStack {
            Text("Why not try…")
                .font(.largeTitle.bold())

            VStack {
                Circle()
                    .fill(colors.randomElement() ?? .blue)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.archery")
                            .font(.system(size: 144))
                            .foregroundColor(.white)
                    )

                Text("\(selected)!")
                    .font(.title)
//                Button("Try again") {
//                    // change activity
//                    withAnimation {
//                            selected = activities.randomElement() ?? "Archery"
//                        }
//                }
//                .buttonStyle(.borderedProminent)
                
                
                Button("Try again") {
                    withAnimation(.easeInOut(duration: 1)) {
                        selected = activities.randomElement() ?? "Archery"
                        id += 1
                    }
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

#Preview {
    SecondView()
}
