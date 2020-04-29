import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userSettings: UserSettings
    
    var body: some View {
        VStack {
            Text("\(userSettings.score)")
                .font(.largeTitle)

            IncreaseScoreButton()
        }
    }
}

struct IncreaseScoreButton: View {
    @EnvironmentObject var userSettings: UserSettings
    
    var body: some View {
        Button("Increment Score") {
            self.userSettings.score += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserSettings())
    }
}
