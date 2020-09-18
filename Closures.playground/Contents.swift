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

//let names = ["Michael Jackson", "Michael Collins", "Adele Adkins"]
//let o = names.filter { $0.hasPrefix("Michael")}
//print(o)
//
//let words = ["is in", "Fearless"]
//let input = "My album is in 1989"
//let  t = words.contains(where: input.contains)
//
//let intA = [1,3,5,54]
//intA.reduce(0) { (res, int1) in
//    return res + int1
//}
//intA.reduce(0, +)

//var arrayClosures: [() -> Void] = []
//
//func process(_ input: @escaping() -> Void) {
//    arrayClosures.append(input)
//}
//
//process({print ("Hello1")})
//process({print ("Hello2")})
//
//arrayClosures.forEach { (val) in
//    val()
//}

//func executeCall(_ input:Int, completion: ([Int]?, Error?) -> Void) {
//    print("You passed \(input)")
//    let data = [2,3,40]
//    completion(data, nil)
//}
//
//executeCall(40) { (array, error) in
//    print((array ?? []))
//}

