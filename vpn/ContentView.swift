import SwiftUI

struct ContentView: View {
    

    var body: some View {
        
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            Spacer()
        }
       
    }
}

#Preview {
    ContentView()
}
