import UIKit

let randomeNumber = [11,2,3,4,566,4,3]

var teamScore = 0

for score in randomeNumber {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

var isPossiable: Bool?
isPossiable = true
print(isPossiable)

let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"
print(informalGreeting)

let vegetable = "red pepper"
switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let target where target.hasSuffix("pepper"):
        print("Is it a spicy \(target)?")
    default:
        print("Everything tastes good in soup.")
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0

for (key, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            print(key, number)
            largest = number
        }
    }
}

var n = 2
while n < 100 {
    n *= 2
}
print(n)

/**
 do whilte
 */

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

var total = 0;

for i in 0..<4 {
    total += i
}

print(total)
