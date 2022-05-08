import UIKit

let name = "Marie Curie"
let firstSpace = name.firstIndex(of: " ") ?? name.endIndex

print(name.firstIndex(of: " "))
print(name.endIndex)

let firstName = name[..<firstSpace]
print(firstName)

print(##"""
    Hello
"""##)

let emptyString = ""

print(emptyString.isEmpty)

// var 에만 문자열을 합성할 수 있음

var variableString = "Horse" + " and carriage"
// variableString += " and carriage
// 왜 이건 안되는거지??..
print(variableString)

// String함수를 이용해 캐릭터 함성 가능

let tempCharacter:[Character] = ["r", "a", "v", "e", "n"]
print(String(tempCharacter))

let string1 = "hello"
let string2 = " there"
var sumString = string1 + string2
print(sumString)

var instruction = "look over"
instruction += string2
print(instruction) // ??

let exclamationMark: Character = "!"
var welcome = sumString
welcome.append(exclamationMark)
print(exclamationMark)

print(#"Write an interpolated string in Swift using \(multiplier)."#)
print(##"6 times 7 is \##(6 * 7)."##)

var birdName = "Black raven"

print(birdName[birdName.startIndex])
print(birdName[birdName.index(after: birdName.startIndex)])
print(birdName[birdName.index(before: birdName.endIndex)])
print(birdName[birdName.index(birdName.startIndex, offsetBy: 7)])

for index in birdName.indices {
    print("\(birdName[index]) ", terminator: "")
}

birdName.insert("!", at: birdName.endIndex) // character 집어 넣기
print(birdName)

birdName.insert(contentsOf: " is bird", at: birdName.index(before: birdName.endIndex)) // 문자열 집어넣기
print(birdName)

birdName.remove(at: birdName.index(before: birdName.endIndex))
print(birdName)

var range = birdName.index(birdName.startIndex, offsetBy: 4)..<welcome.endIndex
print(range)

print(birdName)

birdName.removeSubrange(range)
print(birdName)

let greeting = "Hello, world!"
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index]
// beginning is "Hello"

// Convert the result to a String for long-term storage.
let newString = String(beginning)
print(type(of: beginning)) // Substring
print(type(of: newString)) // String

// hasPrefix hasSubfix

print("Hello".hasPrefix("Hel"))
