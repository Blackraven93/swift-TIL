// MARK: - 나머지 연산
var number: Double = 5
var result: Double = number.truncatingRemainder(dividingBy: 1.5)
print(result)

var valueA: Int = 3
var valueB: Int = 5

var biggerValue: Int = valueA > valueB ? valueA : valueB
print(biggerValue)

valueA = 0
valueB = -3

biggerValue = valueA > valueB ? valueA : valueB

var stringA: String = ""
var stringB: String = "String"

var resultValue: Double = stringA.isEmpty ? 1.0 : 0.0
resultValue = stringB.isEmpty ? 1.0 : 0.0

print(resultValue)

// MARK: "===" 연산
class SampleClass {
    init() {}
}

let propertyA = SampleClass()
let propertyB = propertyA
let propertyC = SampleClass()
print(propertyB === propertyA)
print(propertyA === propertyC)
// print(propertyA == propertyB)

//var unsignedInteger: UInt8 = 0
//let errorUnderflowResult: UInt8 = unsignedInteger - 1
//let underflowedValue: UInt8 = unsignedInteger &- 1
//
//unsignedInteger = UInt8.max
//let errorOverflowResult: UInt8 = unsignedInteger + 1
//let overflowedValue: UInt8 = unsignedInteger &+ 1

// MARK: "~=" 연산

// print(12 ** 3) Error

prefix operator **
prefix func ** (value: Int) -> Int {
    return value * value
}

let minusFive: Int = -4
let sqrtMinusFive: Int = **minusFive

print(sqrtMinusFive)

prefix func ! (value: String) -> Bool {
    return value.isEmpty
}

var stringValue: String = "raven"
var isEmptyString: Bool = !stringValue

print(isEmptyString)

stringValue = ""
isEmptyString = !stringValue

print(isEmptyString)

//prefix operator **
//prefix func ** (value: String) -> String {
//    return value + " " + value
//}
//
//let resultString: String = **"raven"
//
//print(resultString)

postfix operator **
postfix func ** (value: Int) -> Int {
    return value + 10
}

let five: Int = 5
let fivePlusTen: Int = five**

print(fivePlusTen)

prefix operator **
postfix operator **

prefix func ** (value: Int) -> Int {
    return value * value
}

postfix func ** (value: Int) -> Int {
    return value + 10
}

let five: Int = 5
let sqrtFivePlusTen: Int = **five**

print(sqrtFivePlusTen) // ( 10 + 5 ) * ( 10 + 5 ) == 225

// MARK: 중위 연산자 정의와 구현
precedencegroup 우선순위 그룹 이름 {
    higherThan: 더 낮은 우선순위 그룹 이름
    lowerThan: 더 높은 우선순위 그룹 이름
    associativity: 결합방향(left / right / none)
    assignment: 할당방향 사용(true / false)
}




