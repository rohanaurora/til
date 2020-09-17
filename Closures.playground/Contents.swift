import Cocoa

//let greetPerson = { "Hello" }
//
//greetPerson()
//
//let greetCopy = greetPerson
//greetCopy()
//
//
//func runClosure(_ closure: (String, Int) -> Void) {
//    print("Start")
//    closure("_executing_long_process_", 23)
//}
//
//runClosure { z1,z2 in
//    var x = greetCopy()
//    x = x + z1 + String(z2)
//    print(x)
//}
//
//func testClosure() -> () -> Void {
//    var ctr = 0
//    return {
//        ctr += 1
//        print(ctr)
//    }
//}
//
//let g = testClosure()
//g()
//g()
//g()
//let gCopy = g
//gCopy()
//g()
//gCopy()

let names = ["Michael Jackson", "Michael Collins", "Adele Adkins"]
let o = names.filter { $0.hasPrefix("Michael")}
print(o)

let words = ["1989", "Fearless"]
let input = "My album is in 1989"
let  t = words.contains(where: <#T##(String) throws -> Bool#>)
