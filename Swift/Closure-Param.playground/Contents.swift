import Cocoa


typealias PetData = (name: String, age: Int)

typealias PetClosure = ([PetData]) -> Void

let testData = [("Cat", 5), ("Dog", 12), ("Puma", 3)]

// Closure as a parameter to another function

func fetchPetAge(closure: PetClosure) {
    closure(testData)
}
 
// Closure as an argument to a function call

fetchPetAge { (results) in
    for case let (name, damage) in results {
        print("\(name)'s age is \(damage)")
    }
}
