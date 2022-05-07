import UIKit


let (x, y) = (1, 2)

print(x, y)

print((1, "zebra") < (2, "apple"))
// 튜플 대입 사용 시 String, Int 사용

let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

userDefinedColorName = "green"

var colorNameToUse = userDefinedColorName ?? defaultColorName
print(colorNameToUse)

// closed range

for x in 0...5 { print(x) }

print("Half Open")

for x in 0..<5 { print(x) }

print("one side Ranged")

let names = ["Anna", "Alex", "Brian", "Jack"]

for name in names[2...] { print(name) }
for name in names[..<2] { print(name) }

let range = ...5
print(range.contains(7))
print(range.contains(-2))
