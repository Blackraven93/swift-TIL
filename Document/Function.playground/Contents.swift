import UIKit

var greeting = "Hello, playground"

// return이 없을 때 undefined 가능
func greet(person: String) {
    print("Hello, \(person)!")
}
greet(person: "Dave")

func greet2(person: String) {
    print("Hello, \(person)!")
}

let value = greet2(person: "Raven")
print(value) // tuple () 값으로써 빈 튜플을 놓는다.


func birdName(name:String) -> String {
    return "This bird name is \(name)"
}

func WhatIsBird(bird:[String:String], birdPName: String) -> String {
    guard let birdType = bird["type"] else {
        return "새가 없습니다."
    }
    
    print(birdName(name: "parrot")) // 외부 함수를 사용할 수 있음
    
    return "\(birdPName) bird type is \(birdType)"
}

print(WhatIsBird(bird: ["type":"blackBird"], birdPName: birdName(name: "Raven")))
// 왜 옵셔널일까?? bird["type"]이?? -> guard에서 체크하지 않으면 optional!!

// (Int?, Int?)와 (Int, Int)?는 다르다!!

func greet3(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet3(person: "Bill", from: "Cupertino"))
// Prints "Hello Bill!  Glad you could visit from Cupertino.’
// 라벨은 맨 앞에, 파라미터로 사용할 값은 두번 째, 만약에 하나로 둔다면 동일하게

// Omitting arguments Label

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var first = 5
var second = 7

swapTwoInts(&first, &second)
print(first, second)
// arguments에 & 기호는 뭐지???
// => https://stackoverflow.com/questions/30541244/what-does-an-ampersand-mean-in-the-swift-language

func addTwoInts(_ a:Int, _ b :Int) -> Int {
    return a + b
}

func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)

func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var currentValue = -2
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

// 함수를 리턴하는 구조
print(moveNearerToZero(4))
