import UIKit

var greeting = "Hello, playground"

class Counter {
    var count = 0
    
    func increment(by amount:Int) {
        count += amount
    }
    
    func reset() {
        count = 0
    }
}

var counter = Counter()
counter.increment(by: 3)
counter.increment(by: 2)
counter.increment(by: 1)
print(counter.count)


struct Point {
    var x = 0.0, y = 0.0
    var getPoint:(Double, Double) {
        get {return (x, y)}
    }
    
    func isToTheRightOf(x:Double) -> Bool {
        return self.x > x
    }
    
    mutating func moveBy(x deltaX: Double, y deltaY: Double) { // struct에서 변경시 mutate keyword 붙이기
        self = Point(x: x + deltaX, y: y + deltaY)
        // x += deltaX
        // y += deltaY
        // 붕어빵 틀을 직접 변경할 수는 없다!
    }
}


var point = Point(x: 5.5, y: 2.2)
point.moveBy(x: 10, y: 32) // moveBy 즉 x, y값을 변경하려면 var를 사용해야 한다!
print(point.getPoint)


enum TriStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}
var ovenLight = TriStateSwitch.low
ovenLight.next()
// ovenLight is now equal to .high
ovenLight.next()
// ovenLight is now equal to .off
print(ovenLight)


// Type method
class SomeClass {
    class func someTypeMethod() {
        print("type method implementation goes here")
    }
}

SomeClass.someTypeMethod()



struct LevelTracker {
    static var highestUnlockedLevel = 1
    var currentLevel = 1

    static func unlock(_ level: Int) {
        if level > highestUnlockedLevel { highestUnlockedLevel = level }
    }

    static func isUnlocked(_ level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    
    @discardableResult // 결과값을 사용하지 않아도 워닝을 띄어 주지 마세욥
    mutating func advance(to level: Int) -> Bool {
        if LevelTracker.isUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}

class Player {
    var tracker = LevelTracker()
    let playerName: String
    func complete(level: Int) {
        LevelTracker.unlock(level + 1) // 상위 챕터 해금
        tracker.advance(to: level + 1) // 레벨 업
    }
    
    init(name: String) {
        playerName = name
    }
}

let raven = Player(name: "raven")
raven.complete(level: 1)
print(raven.tracker.currentLevel) // static이 붙지 않은 tracker에 직접 들어갈 수 있다!
raven.complete(level: 2)
print(raven.tracker.advance(to: 4)) // 해금했냐?
print(LevelTracker.highestUnlockedLevel)

