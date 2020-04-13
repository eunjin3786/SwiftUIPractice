import SwiftUI

struct ContentView: View {
    let friends = [Friend(name: "윌리엄", profileImageName: "baby"),
                   Friend(name: "윌리엄", profileImageName: "baby"),
                   Friend(name: "윌리엄", profileImageName: "baby"),
                   Friend(name: "윌리엄", profileImageName: "baby"),
                   Friend(name: "윌리엄", profileImageName: "baby"),
                   Friend(name: "윌리엄", profileImageName: "baby")]
    
    var body: some View {
        List(friends) { friend in
            FriendCell(friend: friend)
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
