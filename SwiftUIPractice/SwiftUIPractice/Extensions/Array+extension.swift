import Foundation

// https://www.hackingwithswift.com/example-code/language/how-to-split-an-array-into-chunks
// chunk = 덩어리
extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}
