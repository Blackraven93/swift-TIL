import Foundation

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

//enum School: CaseIterable {
//    case primary
//    case elementary
//    case middle
//    case high
//    case college
//    case university
//    case graduate
//}
//
//enum Bird {
//    case eagle, raven, parrot
//}
//
//// var highestEducationLevel: School = School.university
//// 하위와 같은 표현
//
//var highestEducationLevel: School = .university
//
//highestEducationLevel = .graduate
//
//print(highestEducationLevel)
//
//print(type(of: highestEducationLevel))

enum WeekDays: Character {
    case mon = "월"
    case tue = "화"
    case wed = "수"
    case thu = "목"
    case fri = "금"
    case sat = "토"
    case sun = "일"
}
// 원시 값을 가지고 오고 싶다면 특정 타입을 명시해주어야함
// 부가적으로 rawValue를 가져올 수 있음
let today: WeekDays = WeekDays.fri
print("오늘은 \(today.rawValue) 요일입니다.")

enum Numbers: Int {
    case zero
    case one
    case two
    case ten = 10
}

print("\(Numbers.zero.rawValue), \(Numbers.one.rawValue)")

// let primary = School(RawValue: "유치원")
// print(primary)

// let graduate = School(rawValue: "석박사")

//enum MainDish {
//    case pasta(taste: String)
//    case pizza(dough: String, topping: String)
//    case chicken(withSauce: Bool)
//    case rice
//}
//
//var dinner: MainDish = MainDish.pasta(taste: "크림")
//dinner = .pizza(dough: "치즈", topping: "불고기")
//dinner = .chicken(withSauce: true)
//dinner = .rice

enum PastaTaste {
    case cream, tomato
}

enum PizzaDough {
    case cheeseCrust, thin, original
}

enum PizzaTopping {
    case pepperoni, cheese, bacon
}

enum MainDish {
    case pasta(taste: PastaTaste)
    case pizza(dough: PizzaDough, topping: PizzaTopping)
    case chicken(withSauce: Bool)
    case rice
}


var dinner = MainDish.pasta(taste: PastaTaste.tomato)
dinner = MainDish.pizza(dough: PizzaDough.original, topping: PizzaTopping.bacon)

// Caseiterable 프로토콜을 장착할 때 allCases를 사용할 수 있음
//let allCases: [School] = School.allCases
//print(allCases)

enum School: String, CaseIterable {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
//    @available(iOS, obsolteted: 12.0)
    case graduate = "대학원"
    
    static var allCases: [School] {
        let all: [School] = [
            .primary,
            .elementary,
            .middle,
            .high,
            .college,
            .university
        ]
        
        #if os(iOS)
        return all
        #else
        return all + [.graduate]
        #endif
    }
}

let allCases: [School] = School.allCases
print(allCases)

// 순환 열거형
// 일괄 부분 모두 가능




indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)

let sum = ArithmeticExpression.addition(five, four)
let final = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case.number(let value):
        return value
    case .addition(let left, let right):
        return evaluate(left) + evaluate(right)
    case .multiplication(let left, let right):
        return evaluate(left) * evaluate(right)
    }
}

let result: Int = evaluate(final)
print("(5 + 4) * 2 = \(result)")
