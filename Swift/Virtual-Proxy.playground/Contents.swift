import Cocoa

protocol Addable {
    func add(_ num1:Int, _ num2:Int) -> Int
}

protocol SubDelegate: class {
    func sub(_ num1:Int, _ num2:Int) -> Int
}

final class Add: Addable {
    weak var delegate: SubDelegate?

    func add(_ num1: Int, _ num2: Int) -> Int {
        delegate?.sub(num1, num2)
        return num1 + num2 + 5
    }
}

// Proxy forwards data
final class Ops: Addable, SubDelegate {
    
    lazy private var addOps: Add = Add()
    
    init() {
        addOps.delegate = self
    }
    
    func sub(_ num1: Int, _ num2: Int) -> Int {
        return num1 - num2
    }
    
    func add(_ num1: Int, _ num2: Int) -> Int {
        return addOps.add(0, 6)
    }
}

let ops = Ops()
print(ops.add(34, 16))
print(ops.sub(10, 5))
