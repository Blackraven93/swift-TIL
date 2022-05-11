import UIKit

let birds = ["Raven", "Woodpecker", "Swallow", "Pigdon"]

for bird in birds {
    
    if bird == "Raven" {
        print("Raven! leave me alone..")
    } else {
        print("bird name is \(bird)")
    }
}

let familyDict = ["mother":40, "father": 45, "brother":27, "sister":22]

for (familyRole, familyAge) in familyDict {
    print(familyRole, familyAge)
}

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

let minutes = 60
for tick in 0...60 {
    print("minute is \(tick)")
}

let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print(tickMark, terminator: " ")
}

let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    print(tickMark, terminator: " ")
}

let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)

print("\n\(board)")

// repeat while,

// if, else, else if, switch

let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a", "A": // 둘다 가능
    print("The letter A")
default:
    print("Not the letter A")
}

let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).") // 범위도 가능!!

let somePoint = (0, 12)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}

// 튜플도 가능
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
} // switch에 변수를 넣어서 사용할 수도 있다..?



let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}

// continue, break, fallthrough

let integerToDescribe = 11
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough // default로 보내버리기
default:
    description += " an integer."
}
print(description)


// guard
func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }

    print("Hello \(name)!")

    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }

    print("I hope the weather is nice in \(location).")
}

greet(person: ["name": "John"])

greet(person: ["name": "Jane", "location": "Cupertino"])

func birdChecker(bird: [String:String]) {
    
    guard Int(bird["size"]!)! > 20 else {
        // 20 보다 작지 않으면
        // false일 때
        print("overSize")
        return
    }
    
    guard let name = bird["name"] else {
        print("There isn't name")
        return
    }
    
    print("over")
}

birdChecker(
    bird: [
        "name":"raven",
        "color":"black",
        "canFly":"true",
        "size":"23"
    ]
)

// API 버전 체크! guard등과 함께 사용한다.
// if #available(platform name version, ..., *) {
//    statements to execute if the APIs are available
// } else {
//    fallback statements to execute if the APIs are unavailable
// }

// 어노테이션도 있음 @available


