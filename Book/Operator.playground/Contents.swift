import UIKit

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

var unsignedInteger: UInt8 = 0
let errorUnderflowResult: UInt8 = unsignedInteger - 1
let underflowedValue: UInt8 = unsignedInteger &- 1

unsignedInteger = UInt8.max
let errorOverflowResult: UInt8 = unsignedInteger + 1
let overflowedValue: UInt8 = unsignedInteger &+ 1


