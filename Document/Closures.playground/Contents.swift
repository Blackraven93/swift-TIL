import UIKit

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversedNames = names.sorted(by: backward)
print(reversedNames)

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})

// sorted 와 같이 들어오는 형태가 정해져 있을 때 생략 가능
reversedNames = names.sorted(by: { s1, s2 in return s1 < s2 } )
print(reversedNames)
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
print(reversedNames)
reversedNames = names.sorted(by: { $0 < $1 } )
print(reversedNames)
reversedNames = names.sorted(by: >)
print(reversedNames)

var greeting = { (name:String) -> () in print("Hello!! \(name)") }

greeting("Raven")
greeting("Whale")

greeting = { name in print("Hello!! \(name)") }

greeting("Woodpecker")

// Escaping Closures
// Escaping 클로저는 클로저가 함수의 인자로 전달됐을 때, 함수의 실행이 종료된 후 실행되는 클로저 입니다.
// Non-Escaping 클로저는 이와 반대로 함수의 실행이 종료되기 전에 실행되는 클로저 입니다
// Autoclosures


var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}



func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { self.x = 100 }
        someFunctionWithNonescapingClosure { x = 200 }
    }
}

let instance = SomeClass()
instance.doSomething()
print(instance.x)
// Prints "200"

completionHandlers.first?()
print(instance.x)

class SomeOtherClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { [self] in x = 100 }
        someFunctionWithNonescapingClosure { x = 200 }
    }
}

struct SomeStruct {
    var x = 10
    mutating func doSomething() {
        someFunctionWithNonescapingClosure { x = 200 }  // Ok
        someFunctionWithEscapingClosure { x = 100 }     // Error
    }
}

// closure 이해가 안간다. 물어봐야겠다.
