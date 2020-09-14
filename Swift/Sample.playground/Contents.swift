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

let nf = NumberFormatter()
nf.locale = Locale.init(identifier: "hi")
nf.numberStyle = .spellOut
let num = nf.string(from: 10_000_000)
print(num)

