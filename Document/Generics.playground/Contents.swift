import UIKit

func swapTwoInts(_ a: inout Int, _ b: inout Int) { // parameter를 변경시키기 위해서는 ??
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
// Prints "someInt is now 107, and anotherInt is now 3

func swapTwoStrings(_ a: inout String, _ b: inout String) {
    let temporaryA = a
    a = b
    b = temporaryA
}

func swapTwoDoubles(_ a: inout Double, _ b: inout Double) {
    let temporaryA = a
    a = b
    b = temporaryA
}

// 모든 타입에 따라 타입을 설정하는 번거로움 발생!!

func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someString = "hello"
var anotherString = "world"
// 변경시키길 바라는 변수를 인자값 형태로 전달할 때 앰퍼샌드(&) 기호를 붙여서 사용
swapTwoValues(&someString, &anotherString)

struct IntStack {
    var items: [Int] = []
    mutating func push(_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
}

var stack = IntStack(items: [1,2,3,4])
stack.pop()
print(stack)

//struct Stack<Element> {
//    var items: [Element] = []
//    mutating func push(_ item: Element) {
//        items.append(item)
//    }
//    mutating func pop() -> Element {
//        return items.removeLast()
//    }
//}
//
//var allTypeStack = Stack(items: [1,"11", true, IntStack()])
//
//print(allTypeStack)
//
//var stringStack = Stack<String>(items: ["1","2"])
//print(stringStack)
//
//extension Stack {
//    var topItem: Element? {
//        return items.isEmpty ? nil : items[items.count - 1]
//    }
//}

//if let topItem = stringStack.topItem {
//    print("The top item on the stack is \(topItem).")
//}

// Generic을 두가지 타입으로 사용하여 규정할 수 있다.
// func someFunction<T: SomeClass, U: SomeProtocol>(someT: T, someU: U) {
    // function body goes here
// }

func findIndex(ofString valueToFind: String, in array: [String]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

let find = findIndex(ofString: "3", in: ["1", "2", "3", "4", "5"])
if let test = find { print(test) }

//func findIndexGeneric<T>(of valueToFind: T, in array:[T]) -> Int? {
//    for (index, value) in array.enumerated() {
//        if value == valueToFind { // 그냥 generic을 사용한다면 비교불가능 하다 (T가 어떤 부분인지 모르기 때문에)
//            return index
//        }
//    }
//    return nil
//}

// 같은시에 여러 프로토콜을 반영하여 놓을 수 있다.
func findIndexEqual<T: Equatable>(of valueToFind: T, in array:[T]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

//protocol Container {
//    associatedtype Item
//    mutating func append(_ item: Item)
//    var count: Int { get }
//    subscript(i: Int) -> Item { get }
//}


//struct StackUsingProtocol: Container {
//    // original IntStack implementation
//    var items: [Int] = []
//    mutating func push(_ item: Int) {
//        items.append(item)
//    }
//    mutating func pop() -> Int {
//        return items.removeLast()
//    }
//    // conformance to the Container protocol
//    typealias Item = Int // associatedtype Item
//    mutating func append(_ item: Int) {
//        self.push(item)
//    }
//    var count: Int {
//        return items.count
//    }
//    subscript(i: Int) -> Int {
//        return items[i]
//    }
//}

//struct StackUsingCustomGeneric<Element>: Container { // protocol로 generic을 등록했다면
//
//    var items: [Element] = []
//    mutating func push(_ item: Element) {
//        items.append(item)
//    }
//    mutating func pop() -> Element {
//        return items.removeLast()
//    }
//    // conformance to the Container protocol
//    mutating func append(_ item: Element) {
//        self.push(item)
//    }
//    var count: Int {
//        return items.count
//    }
//    subscript(i: Int) -> Element {
//        return items[i]
//    }
//}
//
//let testStack = StackUsingCustomGeneric(items: ["1", "2", "3", "4"])
//print(testStack) // StackUsingCustomGeneric<String>으로 동적으로 바인딩 된 것을 볼 수 있음
//protocol Container {
//    associatedtype Item: Equatable
//    mutating func append(_ item: Item)
//    var count: Int { get }
//    subscript(i: Int) -> Item { get }
//}

struct Stack<Element> {
    // original Stack<Element> implementation
    var items: [Element] = []
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
    // conformance to the Container protocol
    mutating func append(_ item: Element) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Element {
        return items[i]
    }
}


//protocol SuffixableContainer: Container {
//    associatedtype Suffix: SuffixableContainer where Suffix.Item == Item
//    func suffix(_ size: Int) -> Suffix
//}
//
//extension Stack: SuffixableContainer {
//    func suffix(_ size: Int) -> Stack {
//        var result = Stack()
//        for index in (count-size)..<count {
//            result.append(self[index])
//        }
//        return result
//    }
//    // Inferred that Suffix is Stack.
//}
//
//var stackOfInts = Stack<Int>()
//stackOfInts.append(10)
//stackOfInts.append(20)
//stackOfInts.append(30)
//let suffix = stackOfInts.suffix(2)

extension Stack where Element: Equatable {
    func isTop(_ item: Element) -> Bool {
        guard let topItem = items.last else {
            return false
        }
        return topItem == item
    }
}
// where 절에 따라 동적으로 Stack에 메서드 넣어주기

// var notEquatableStack = Stack<NotEquatable>()
// generic을 사용하는 이유

// where 절 사용하기
protocol Container {
    associatedtype Item
    mutating func append(_ item: Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }

    associatedtype Iterator: IteratorProtocol where Iterator.Element == Item
    func makeIterator() -> Iterator
}

protocol ComparableContainer: Container where Item: Comparable { }


// subscripts(iterable한 스타일로 만들기
extension Container {
    subscript<Indices: Sequence>(indices: Indices) -> [Item]
        where Indices.Iterator.Element == Int {
            var result: [Item] = []
            for index in indices {
                result.append(self[index])
            }
            return result
    }
}
