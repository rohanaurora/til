import Foundation

// Conditional Try
//var content = ""
//var url = URL(string: "http://www.yahoo.com")!
//
//content = (try? String(contentsOf: url)) ?? "Default"


//func loadData() -> String {
//    if let o = try? String(contentsOf: url) { return o }
//    return "default"
//}
//
//// Defer always called at the end of do block.
//loadData: do {
//    defer { print("Done")}
//    for i in 1...10 {
//        print(i)
//    }
//}

//let array = Array(1...10)
//let t = array.lazy.map({ $0 / 2 })
//t.reduce(0, +)

//let nf = NumberFormatter()
//nf.locale = Locale.init(identifier: "hi")
//nf.numberStyle = .spellOut
//let num = nf.string(from: 10_000_000)
//print(num)


// Binary Search
struct Solution {
    func binarySearch<T: Comparable>(_ a: [T], key: T) -> Int? {
        var lowerBound = 0
        var upperBound = a.count
        while lowerBound < upperBound {
            let midIndex = lowerBound + (upperBound - lowerBound) / 2
            if a[midIndex] == key {
                return midIndex
            } else if a[midIndex] < key {
                lowerBound = midIndex + 1
            } else {
                upperBound = midIndex
            }
        }
        return nil
    }
}

var numbers = [2, 311, 51, 72, 111, 13, 17, 19, 23, 219, 31, 37, 41, 43, 47, 53, 59, 61, 67]
numbers = numbers.sorted()
let t = Solution().binarySearch(numbers, key: 72)

