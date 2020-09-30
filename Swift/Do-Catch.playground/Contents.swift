import Cocoa

enum PasswordError: Error {
    case failed
    case short(message: String, chars: Int)
    case correct
    case empty
}

func c() {
    return
}

func validation(_ username: String, with password: String, _ c:() throws -> String) throws {
    do {
        try validation("Taylor", with: "w", c)
    } catch PasswordError.empty {
        print("You must type a password!")
        throw PasswordError.empty
    } catch PasswordError.short(let msg, let chars) where chars < 6  {
        print("Your password is short!" + " \(msg)")
        throw PasswordError.short(message: msg, chars: msg.count)
    } catch PasswordError.correct {
        print("Your password is valid!")
        throw PasswordError.correct
    } catch {
        print("Password Failed!")
        throw PasswordError.failed
    }
}


//let x =  try? validation("Taylor", with: "Swift")
//
//func find(_ arr:[Int]) -> Int {
//    var minIndex = -1
//    var minV = Int.max
//    for (i, j) in arr.enumerated() {
//        if val < minV {
//            minI = index
//        }
//    }
//    return minIndex
//}
//
//find[10,3,4]


