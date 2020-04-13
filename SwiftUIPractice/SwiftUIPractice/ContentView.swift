import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 5) {
            // System Font
            Text("Hello, SwiftUI")
                .font(.title)
                .fontWeight(.thin)
                .foregroundColor(.orange)

            // Custom Font
            Text("안녕, SwiftUI")
                .font(.custom("NanumSquareR", size: 20))
                .foregroundColor(Color(red: 130/255, green: 150/255, blue: 150/255))

            Image("baby")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100, alignment: .center)
                .cornerRadius(10)
            
            Image("baby")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
