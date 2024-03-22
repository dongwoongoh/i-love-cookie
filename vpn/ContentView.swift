import SwiftUI

struct ContentView: View {
    @State private var id = 1
    
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]

    @State private var selected = "Archery"
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]

    var body: some View {
        VStack {
            Text("Why not try")
                .font(.largeTitle.bold())
        }
        
        VStack {
            Circle()
                .fill(colors.randomElement() ?? colors[0])
                .padding()
                .overlay(
                    Image(systemName: "figure.\(selected.lowercased())")
                        .font(.system(size: 144))
                        .foregroundColor(.white)
                )
            Text("\(selected)!")
                .font(.title)
        }
        .transition(.slide)
        .id(id)
       
    
        VStack {
            Button("Click"){
                withAnimation(.easeInOut(duration: 0.5)) {
                    selected = activities.randomElement() ?? activities[0]
                    id += 1
                }
            }.buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
