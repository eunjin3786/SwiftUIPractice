import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // System
            Text("Hello, SwiftUI")
                .font(.title)
                .fontWeight(.thin)
                .foregroundColor(.orange)
            
            // Custom
            Text("Hello, World!")
                .font(.largeTitle)
                .foregroundColor(Color(red: 130/255, green: 150/255, blue: 150/255))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
