import Foundation

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
//    try makeSomeCall("password")
//} catch {
//    print("Check password!")
//}

//func simplyPrint(num: inout Int) {
//    print(num)
//}
//
//var z = 42
//simplyPrint(num: &z)

//
//func changeNum(num: inout Int) {
//    num = 2
//    print(num)
//}
//
//var variable:Int = 45
//changeNum(num: &variable)


//// Closures
//let driving = { print("McLaren") }
//driving()
//
//let driving2 = { (car:String) in
//    print("I am driving \(car)")
//}
//driving2("McLaren!")
//
//let drivingWithReturn = { (car:String) -> String in
//    return "I am driving \(car)"
//}
//print(drivingWithReturn("Tesla"))

// Closure with params.
//func travel(action:() -> Void) {
//    print("Ready to roll!")
//    action()
//    print("Done")
//}
//
//travel {
//    print("Start McLaren")
//}

// Trailing closure syntax
//travel() {
//    print("Driving")
//}

func raceReady(mode: (String) -> Void) {
    print("Ready")
    mode("start my car")
    print("Arrived")
}

raceReady { (xyz: String) in
    print("I am going to \(xyz)")
}


//func groceryShopping(items: (String) -> [String]) {
//    print("Start shopping")
//    let i = items("Spinach")
//    for j in i {
//        print("Bought \(j)")
//    }
//    print("Finished")
//}
//
//let fruits = "Apples"
//
//groceryShopping { (veggies) -> [String] in
//    return [veggies, fruits]
//}
//
//groceryShopping {
//    [$0, fruits]
//}

//func teaTasting(teaName: (String, String) -> String) {
//    print("Go to the location")
//    let tn = teaName("Mate", "South America")
//    print(tn)
//    print("Drink tea")
//}
//
//teaTasting {  return "Open up \($0) from \($1)" }

// Property Observers
//struct Sport {
//    var name: String
//    var score: Int {
//        didSet {
//            print("Updated score - \(score)")
//        }
//    }
//
//    lazy var p = Player()
//
//    init(_ sName: String) {
//        name = sName
//        score = 0
//    }
//
//    mutating func status() {
//        print("The sport is \(name) and new score is \(score) by \(p.name)")
//    }
//
//    mutating func scoreChange() {
//        score = 40
//    }
//}
//
//var sp = Sport.init("Tennis")
//sp.status()
//sp.score = 20
//sp.score = 0
//sp.scoreChange()
//sp.status()
//
//struct Player {
//    var name: String
//
//    init() {
//        name = "Djokovich"
//    }
//}

// Making copies
//struct Dog { // class point to same object in memory
//    var name: String = "Bruno"
//    var breed: String = "Lab"
//}
//
//var d = Dog()
//print(d.breed)
//
//var dCopy = d
//dCopy.breed = "Doodle"
//print(d.breed)

// Protocol
//protocol Bookable {
//    var name: String { get set}
//}
//
//struct User: Bookable {
//    var name: String
//}
//
//func bookData(data: Bookable) {
//    print("The book name is \(data.name)")
//}


