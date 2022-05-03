import UIKit

let maximumNumberofLoginAttempts = 10
var currentLoginAttempt = 0

var x = 0.0, y = 0.0, z = 0.0

print(x, y, z)

// Type Annotations

var welcomeMessage: String

welcomeMessage = "Hello"

var red, green, blue: Double


print("The current value of friendlyWelcome is \(welcomeMessage)")


/**
 코멘트
 */

let minValue = UInt8.min
let maxValue = UInt8.max

let UInt16MinValue = UInt16.min
let UInt16MaxValue = UInt16.max

print("8: \(minValue), 16: \(UInt16MinValue)")
print("8: \(maxValue), 16: \(UInt16MaxValue)")

print(pow(2, 16))

/*
 Int vs UInt
 
 U => Unsigned (부호가 없는 녀석, 0 포함임)
 */


/**
 Double represents a 64-bit floating-point number.
 Float represents a 32-bit floating-point number.’
 
 소수에서 특별한 경우가 아니면 Double을 사용할 것
 */

// 타입 추론

let a = 3
var b = 4
//let c = a + b // Error??


var sum = a + b

let d = 3 + 4.4 // 값이 할당 되고 나서 타입 평가가 일어남

print(sum) // 7

b = 10 // call by value 값이 할당되는 시점에서 끝!

sum = a + b // 다시 할당할 때 정상적으로 변화

print(sum) // 13
 

let underdashNumber = 1_000_000_000

print(underdashNumber)

// let tooBig: Int8 = Int8.max + 1

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

print(twoThousandAndOne) // UInt 끼리는 소통 가능 (범위만 넘지 않는다면 ??)

let shrink = Int(3.14)
print(shrink) // 축소

typealias CustormType = UInt64

var speacialType = CustormType.min

print(speacialType)


/* boolean type 추론 불가
let typeInference = ""

if typeInference {
    print("true")
} else {
    print("false")
}
*/

// decompose tuple
let http404Error = (statusCode: 404, statusMessage: "Not Found")
print(http404Error.0, http404Error.statusCode)
print(http404Error.1, http404Error.statusMessage)

// let (statusCode, statusMessage) = http404Error
// let (justTheStatusCode, _) = http404Error
// http404Error.0 = 404
// http404Error.1 = "Not Found"

//print(statusCode, statusMessage)

/* decompose array 불가..
let http200 = [200, "Success"]
let [statusCode, statusMessage] = http200

print(statusCode, statusMessage)
*/

// 간단한 구조일 때 튜플
// 복잡한 구조일 때는 struct와 class


// Optional Binding ??
var convertedNumber = "5"

//if convertedNumber == nil {
//    print("This is null!!")
//}

if let actualNumber = Int(convertedNumber) {
    print("this is \(type(of:convertedNumber))!! \(actualNumber)")
} else {
    print("this is\(convertedNumber)")
}


if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}


if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}


let possibleString: String? = "test"
// 무조건 할당 시에 !를 이용해서 벗겨 주어야 한다.
let forcedString: String = possibleString!
print(forcedString)

let assumedString: String! = "implicitly unwrapped optional string"
let implicitString: String = assumedString
print(implicitString)

let optionalString = assumedString
print(type(of: optionalString))

// 음.. 컨벤션을 확인해 봐야겠는데

// Error handling

func canThrowAnError() throws {
    
}

do { // block scoop 단위!
    try canThrowAnError()
    // no Error
} catch {
    // an Error was thrown
}


func makeACoffe( ) throws {
    
}

do {
    try makeACoffe()
}

// Assertions and Preconditions


// 디버깅하도록 에러를 체크해주는건가? try catch랑 같이 쓰는건가??
func testFunc() throws {
    let age = -3
    assert(age >= 0, "person's age can't be less than zero")
}

do {
    try testFunc()
} catch {
    print("Error!!")
}


