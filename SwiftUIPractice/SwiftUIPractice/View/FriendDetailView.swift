import SwiftUI

struct FriendDetailView: View {
    let friend: Friend
    
    var body: some View {
        VStack(alignment: .center) {
            Image(friend.profileImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(friend.name)
                .font(.title)
        }
    }
}

struct FriendDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetailView(friend: Friend(name: "윌리엄",
                                        profileImageName: "baby"))
    }
}
