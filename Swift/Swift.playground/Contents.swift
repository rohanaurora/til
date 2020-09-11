import Foundation

let rt = "oplg"
var str = "Hello, playground \(rt)"

let height: Int = 34

let colors = Set(["red", "green", "blue"])
var tup = (name: "Rohan", lname: "Aurora")

let dict = ["Age":32, "Height":6.2]

let eStringDict = [String:String]()
let eStringArray = [String]()
let eSet = Set<String>()

enum Result: String {
    case success = "SU"
    case failure
    
    var status: String {
        switch self {
        case .failure:
            print("Failed")
            return Result.failure.rawValue
        default:
            print("Success")
            return Result.success.rawValue
        }
    }
}

let weather = "rain"

switch weather {
case "rain":
    print("rain")
case "sunny":
    print("its sunny")
default:
    print("no weather")
}

//
//outerloop: for i in 1...10 {
//    for j in 1...10 {
//        if i == j {
//            print("\(i) * \(j) = \(i * j)")
//            if i == 5 { break outerloop }
//        }
//    }
//}

//for i in 1...10 {
//    if i % 2 == 0 {
//        continue // even
//    }
//    print(i) // odd
//}

//func sayHello(name: String? = "") {
//    print("Say hello to \(name ?? "")")
//}
//
//sayHello(name: "John")

//enum PasswordError: Error {
//    case LoginFail
//    case ServerFail
//}
//
//func makeSomeCall(_ password: String) throws  {
//    if password != "password" {
//        throw PasswordError.LoginFail
//    }
//}
//
//do {
//    try makeSomeCall("Password")
//} catch {
//    print("Check password!")
//}

