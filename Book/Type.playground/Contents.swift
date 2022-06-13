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
// var name = "raven"

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
var person: (String, Int, Double) = ("raven", 100, 182.5)

// 인덱스를 통해서 값을 빼 올 수 있습니다.
print("이름 \(person.0), 나이: \(person.1), 신장: \(person.2)")

person.1 = 99
person.2 = 178.5

print("이름 \(person.0), 나이: \(person.1), 신장: \(person.2)")

typealias PersonTuple = (name:String, age:Int, height:Double)

let raven: PersonTuple = ("raven", 100, 178.5)
let swallow: PersonTuple = ("swallow", 150, 183.5)

print("이름 \(raven.name), 나이: \(raven.age), 신장: \(raven.height)")
print("이름 \(swallow.name), 나이: \(swallow.age), 신장: \(swallow.height)")

// Collection형 Array(배열)
// var names:Array<String> = ["raven", "swallow", "woodpecker", "pidgon", "raven"]
// 축약표현
var names:[String] = ["raven", "swallow", "woodpecker", "pidgon", "raven"]

// var emptyArray: [Any] = [Any]() // array 생성
// var emptyArray: [Any] = Array<Any>() // 동일

// 타입을 명시했다면 [] 만으로도 가능
var emptyArray: [Any] = []
print(emptyArray.isEmpty)
print(emptyArray.count)

print(names[2])
print(names[3])
names.append("parrot")
names.append(contentsOf: ["goose", "eagle"])
print(names)
names.insert("Swallow", at: 1)
print(names)

print(names.firstIndex(of: "goose"))
print(names.first)
print(names.last)
let popFirstItem: String = names.removeFirst()
let popLastItem: String = names.removeLast()

print(popFirstItem, popLastItem)
print(names)
print(names[1 ... 3])


// Collection형 Dictionary(딕셔너리)
typealias StringIntDictionary = [String:Int]

// 빈 딕셔너리 생성
var numberForName: Dictionary<String, Int> = Dictionary<String, Int>()
print(numberForName)

var numberForName2: [String:Int] = [String:Int]()
var numberForName3: StringIntDictionary = StringIntDictionary()
print(numberForName3)

var numberForName4: [String: Int] = [:]

var numberForName5: [String: Int] = ["raven":100, "swallow":200, "pigdon":300]
print(numberForName5.isEmpty)
print(numberForName5.count)

print(numberForName5["raven", default: 10])

numberForName5.removeValue(forKey: "swallow")
print(numberForName5["swallow", default: 0])

// Collection형 Set(셋)

var setNames: Set<String> = Set<String>()
var setNames2: Set<String> = []
var setnames3: Set<String> = ["raven", "swallow", "woodpecker", "parrot", "eagle", "goose"]

// 타입 추론시에는 array
let temp = [1,2,3,4,5]
print(type(of: temp))

print(setnames3.isEmpty)
print(setnames3.count)

setnames3.insert("pigdon")
print(setnames3)
setnames3.remove(at: setnames3.startIndex)
print(setnames3)
setnames3.remove("raven")
print(setnames3)

var eatMeatClassAnimal: Set<String> = ["pig", "lion", "tiger", "eagle"]
var birdClassAnimal: Set = ["raven", "goose", "eagle"]

// 교집합
let intersectSet: Set<String> = eatMeatClassAnimal.intersection(birdClassAnimal)
print(intersectSet)

// 여집합
let symmetricDiffSet: Set<String> = eatMeatClassAnimal.symmetricDifference(birdClassAnimal)
print(symmetricDiffSet)

// 합집합
let unionSet: Set<String> = eatMeatClassAnimal.union(birdClassAnimal)
print(unionSet)

// 차집합
let subtractSet: Set<String> = eatMeatClassAnimal.subtracting(birdClassAnimal)
print(subtractSet)

print(unionSet.sorted())

birdClassAnimal.popFirst()

print(birdClassAnimal)

print(eatMeatClassAnimal.isDisjoint(with: birdClassAnimal)) // 상호 배타적인가?
print(eatMeatClassAnimal.isSubset(of: birdClassAnimal)) // 부분집합인가?
print(eatMeatClassAnimal.isSuperset(of: birdClassAnimal)) // 전체집합인가?
print(eatMeatClassAnimal.isSuperset(of: birdClassAnimal))

var array: [Int] = [0,1,2,3,4,5,6]

print(array.randomElement()!)
print(array.shuffled())

// set은 순서가 없음!

var stringShuffle: String = "string"

var dict:[String: Int] = ["a":1, "b":2, "c":3]

print(stringShuffle.shuffled())
print(dict.shuffled())

