import UIKit

func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")

func greeting(person: String, day: String) -> String {
    return "Hello \(person) today is \(day)"
}

print(greeting(person: "Raven", day: "Tusday"))


func todo(_ day: String, _ list: String) -> String {
    return "My work is \(list), today is \(day)"
}

print(todo("Monday", "programming"))

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.0)
print(statistics.1)
print(statistics.2)

func createObject(value: [String]) -> (name: String, type: String, age: String) {
    let name = value[0]
    let type = value[1]
    let age = value[2]
    
    return (name, type, age)
}

let bird = createObject(value: ["Raven", "crow", "4"])
print(bird)

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
print(returnFifteen())

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)
increment(8)
print(increment(9))

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 22, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen)) // true

numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)
