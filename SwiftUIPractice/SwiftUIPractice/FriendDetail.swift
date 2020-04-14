import SwiftUI

struct FriendDetail: View {
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

struct FriendDetail_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetail(friend: Friend(name: "윌리엄",
                                    profileImageName: "baby"))
    }
}
