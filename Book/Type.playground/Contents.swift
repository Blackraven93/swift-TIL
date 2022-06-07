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

// type 추론
var name = "raven"

typealias MyInt = Int
typealias YourInt = Int
typealias MyDouble = Double

let age: MyInt = 100
var year: YourInt = 2080

// MyInt도, YourInt도 Int이기 때문에 같은 타입으로 취급한다.
year = age

let month: Int = 7 // 물론 기존의 Int도 사용 가능한다.
let percentage: MyDouble = 99.9 // Int 외에 다른 자료형도 모두 별칭 사용이 가능합니다.

// Tuple (튜플)
// String, Int, Double 타입을 갖는 튜플
var person: (String, Int, Double) = ("yagom", 100, 182.5)

// 인덱스를 통해서 값을 빼 올 수 있습니다.
print("이름 \(person.0), 나이: \(person.1), 신장: \(person.2)")

person.1 = 99
person.2 = 178.5

print("이름 \(person.0), 나이: \(person.1), 신장: \(person.2)")

typealias PersonTuple = (name:String, age:Int, height:Double)

let yagom: PersonTuple = ("yagom", 100, 178.5)
let eric: PersonTuple = ("eric", 150, 183.5)

print("이름 \(yagom.name), 나이: \(yagom.age), 신장: \(yagom.height)")
print("이름 \(eric.name), 나이: \(eric.age), 신장: \(eric.height)")



