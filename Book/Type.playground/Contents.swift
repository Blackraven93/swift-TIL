import UIKit

// Int +, - 를 포함한 정수
// UInt 0을 포함한 양의 정수

// min, max
let minNumber: Int = Int.min
let maxNumber: Int = Int.max

print(minNumber, maxNumber)

var boolToggle:Bool = true
boolToggle.toggle()

print(boolToggle)

// 64비트 Double
// 32비트 Float

// random 메소드를 이용
print(Int.random(in: -100...100))
print(UInt.random(in: 0...30))
print(Double.random(in: 1.5...4.5))
print(Float.random(in: 1.5...4.5))

// String

// + 이나 append를 이용해 문자열 합성 가능
var name:String = "My name is"
name += " black"
name.append(" raven")
print(name)

// count
print(name.count)
// empty
print(name.isEmpty)

var isSameString: Bool = true
isSameString = name == "compare"
print(isSameString)

// 접두어, 접미어 확인
print(name.hasPrefix("My name"))
print(name.hasSuffix("raven"))

print(name.uppercased())
print(name.lowercased())

// 긴문장
let favoriteFood = """
내가 좋아하는 음식은
치킨입니다.
"""

print(favoriteFood)
