import UIKit

// Array, Set, Dictionary

// 다른 타입은 넣을 수 없음
// 넣고 싶다면 Generic을 이용할 것

// Array
var someInt:[Int] = []
someInt.append(10)
someInt = []
print(someInt)

var threeNumberArray = Array(repeating: 12, count: 5)
print(threeNumberArray)

var threeAnotherNumberArray = Array(repeating: 24, count: 5)
var newArray = threeNumberArray + threeAnotherNumberArray
print(newArray)

// count, isEmpty, append, += remove removeLast
var birds:[String] = ["raven", "woodpecker", "pidgon", "swallow", "crow", "framingoo"]
print(birds[3...birds.index(before: birds.endIndex)])
print(birds[3..<birds.endIndex])
birds.insert("eagle", at: birds.startIndex)
print(birds)
birds.remove(at: birds.startIndex)
print(birds)

let fra = birds.removeLast()
print(fra)
print(birds)

for (index, item) in birds.enumerated() {
    print(index + 1, item)
}


// Set
// contains
// set은 순서가 없지만 정렬하고 싶다면 sorted

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

print(oddDigits.union(evenDigits).sorted())
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
print(oddDigits.intersection(evenDigits).sorted())
// []
print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
// [1, 9]
print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())
// [1, 2, 9]

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

print(houseAnimals.isSubset(of: farmAnimals))
// true
print(farmAnimals.isSuperset(of: houseAnimals))
// true
print(farmAnimals.isDisjoint(with: cityAnimals))
// true

// Dictionary
// count, isEmpty, updateValue
var testDic = ["Raven":"black", "Woodpecker":"brown"]
print(testDic["Raven"])
print(testDic["Woodpecker"])

if let oldValue = testDic.updateValue("grey", forKey: "Raven") {
    print("Appear! : \(oldValue)")
} else {
    print("Disappear !!")
}

print(testDic)

if let ravenColor = testDic["Raven"] {
    print("raven's color is \(ravenColor)")
}

testDic["Raven"] = nil

print(testDic)

if let removeWoodpeckerColoer = testDic.removeValue(forKey: "Woodpecker") {
    print("remove value is \(removeWoodpeckerColoer)")
}

print(testDic)

var appleMenteeDict = ["tech":["dodo", "luke", "river"], "design":["sasha", "anna", "jessica"], "domain":["loan", "raven"]]
print(appleMenteeDict)

for (type, name) in appleMenteeDict {
    print(type, name)
}

for type in appleMenteeDict.keys {
    print(type)
}
 
for name in appleMenteeDict.values {
    print(name)
}


let appleMenteeTypes = [String](appleMenteeDict.keys)


let appleMenteeValues = [[String]](appleMenteeDict.values)

print(appleMenteeTypes)
print(appleMenteeValues)
