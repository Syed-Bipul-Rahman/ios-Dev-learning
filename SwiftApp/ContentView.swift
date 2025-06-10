import SwiftUI

struct ContentView: View {
    @State private var isTapped = false
    @State private var isTapped2 = false
    @State private var isActive = false // For NavigationLink
    
    var body: some View {
        NavigationStack { // Wrap in NavigationStack
            VStack(spacing: 20) {
                
                Image("imagevai")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 50)
                
                Image(systemName: "cloud.sun")
                    .font(.system(size: 100))
                    .foregroundColor(.blue)
                
                Text("Hello World")
                    .font(.system(size: 20))
                    .foregroundColor(.cyan)
                
                Image(isTapped ? "imagevai" : "bipul")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .cornerRadius(100)
                    .shadow(radius: 10)
                    .onTapGesture {
                        self.isTapped.toggle()
                    }
                
                Image(systemName: isTapped2 ? "cloud.sun" : "cloud.sun.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .onTapGesture {
                        self.isTapped2.toggle()
                    }
                
//                // Circle with Navigation
//                NavigationLink("Go to Second View", destination: SecondView())
//                    .font(.title)
//                    .padding()
                
                Circle()
                    .fill(.blue)
                    .frame(width: 100, height: 100)
                    .overlay(
                        Image(systemName: "figure.archery")
                            .font(.system(size: 35))
                            .foregroundColor(.white)
                    )
                    .onTapGesture {
                        self.isActive = true // Trigger navigation manually
                    }
                    .navigationDestination(isPresented: $isActive) {
                        SecondView()
                    }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
