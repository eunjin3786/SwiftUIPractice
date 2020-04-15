import SwiftUI

struct FriendDetailGridView: View {
    let friend: Friend
    
    var body: some View {
        let chunks = Array(repeating: friend.profileImageName, count: 13).chunked(into: 2)
        return List {
            ForEach(0..<chunks.count) { index in
                FriendDetailRow(imageNames: chunks[index])
            }
        }
    }
}

struct FriendDetailRow: View {
    let imageNames: [String]
    
    var body: some View {
        HStack {
            ForEach(0..<imageNames.count) { index in
                Image(self.imageNames[index])
                    .resizable()
                    .scaledToFit()
            }
            
//            ForEach(imageNames) { imageName in
//                Image(imageName)
//            }
        }
    }
}

struct FriendDetailGridView_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetailGridView(friend: Friend(name: "윌리엄", profileImageName: "baby"))
    }
}
