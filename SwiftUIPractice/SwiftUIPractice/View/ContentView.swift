import SwiftUI

struct ContentView: View {
    @State var friends: [Friend] = [Friend(name: "윌리엄", profileImageName: "baby"),
                                    Friend(name: "윌리엄", profileImageName: "baby"),
                                    Friend(name: "윌리엄", profileImageName: "baby")]

    var body: some View {
        NavigationView {
            List(friends) { friend in
                NavigationLink(destination: FriendDetailGridView(friend: friend)) {
                    FriendCell(friend: friend)
                }
            }
            .navigationBarTitle("리스트")
            .navigationBarItems(leading: navigationLeftBarItem,
                                trailing: navigationRightBarItem)
        }
    }
    
    var navigationLeftBarItem: some View {
        Button(action: {
            self.friends.removeLast()
        }) {
            Text("-").font(.largeTitle)
        }
    }
    
    var navigationRightBarItem: some View {
        Button(action: {
            let friend = Friend(name: "윌리엄", profileImageName: "baby")
            self.friends.append(friend)
        }) {
            Text("+").font(.largeTitle)
        }
    }
}

struct FriendCell: View {
    let friend: Friend
    
    var body: some View {
        HStack {
            Image(friend.profileImageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
            
            Text(friend.name)
                .font(.custom("NanumSquareR", size: 20))
                .foregroundColor(.gray)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
