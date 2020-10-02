import Foundation

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

var str = [ 0, 1, 1, 3, 3, 3, 3, 6, 8, 10, 11, 11 ]
let t = binarySearch(str, key: 3)

func quickSort(_ array:[Int]) -> [Int] {
    guard array.count > 1 else { return  array}

    let mid = array.count/2
    let pivot = array[mid]
    let less = array.filter({ $0 < pivot})
    let equal = array.filter({ $0 == pivot })
    let more = array.filter({ $0 > pivot})
    return quickSort(less) + (equal) + quickSort(more)
}

let test = [ 10, 0, 3, 90]
let o = quickSort(test)
