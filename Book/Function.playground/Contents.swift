// Function context가 한줄이면 return 생략

// from과 to라는 전달인자 레이블
func sayHello(from myName: String, to name: String) -> String {
    "Hello \(name)! I'm \(myName)"
}

print(sayHello(from: "raven", to: "swift"))

func omit(_ name: String) -> String {
    "Hello \(name)!!"
}

print(omit("Raven"))

// 함수 중복 정의 가능

//func sayHello(_ name: String) -> String {
//    "Hello \(name)!!"
//}
//
//print(sayHello("Raven"))

// 매개변수 기본값 설정
func sayHello(_ name: String, times: Int = 3) -> String {
    var result = ""
    for _ in 0...times {
        result += "Hello \(times) \n"
    }
    return result
}

print(sayHello("raven"))


// 가변 매개변수와 입출력 매개변수
func sayHelloToFriends(me: String, friends names: String...) -> String {
    var result: String = ""
    
    for friend in names {
        result += "Hello \(friend)!" + " "
    }
    
    result += "I'm " + me + "!"
    return result
}

print(sayHelloToFriends(me: "Raven", friends: "Swallow", "Eagle", "Woodpecker"))

print(sayHelloToFriends(me: "Parrot"))

/* MARK: 특정 키워드가 없으면 참조값을 참조
 1. 함수를 호출할 때, 전달인자의 값을 복사
 2. 해당 전달인자의 값을 변경하면 1에서 복사한 것을 함수 내부에서 변경
 3. 함수를 반환하는 시점에 2에서 변경된 값을 원래의 매개변수에 할당
 
 쉽게 말하면 부수효과를 사용하고 싶다면 ( 외부 값을 변경하고 싶다면 ) &와 inout을 사용
 */

var numbers: [Int] = [1, 2, 3]

func noReferenceParameter(_ arr: [Int]) {
    var copiedArr: [Int] = arr
    copiedArr[1] = 1
}

func referenceParameter(_ arr: inout [Int]) {
    arr[1] = 1
}

noReferenceParameter(numbers)
print(numbers)

referenceParameter(&numbers)
print(numbers)

// func을 데이터 타입으로도 사용 가능

typealias CalculateTwoInts = (Int, Int) -> Int // type의 경우 생략 가능

func add(_ front: Int, _ back: Int) -> Int {
    front + back
}

func multiply(_ front: Int, _ back: Int) -> Int {
    front * back
}

var calculate: CalculateTwoInts = add

print(calculate(3, 5))

calculate = multiply

print(calculate(3, 5))

func printMathResult(_ calculate: CalculateTwoInts, _ front: Int, _ back: Int) -> Int {
    return calculate(front, back)
}

print(printMathResult(calculate, 10, 2))

