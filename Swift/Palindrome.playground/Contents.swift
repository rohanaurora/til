import Cocoa

var str = "abcd" // -> dcbabcd (3 insertions)


print("My Name")
let s = readLine()!
print(s)
func isPalindrome(_ str: String) -> Bool {
    return String(str.reversed()) == str
}
