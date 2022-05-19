import UIKit


struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
}
var f = Fahrenheit()
print("The default temperature is \(f.temperature)° Fahrenheit")
// Prints "The default temperature is 32.0° Fahrenheit


struct Temperature {
    var temp: Double = 32.0 // let일 때는 외부에서 변경 불가
}

struct Bird {
    var name: String
}

var x = Temperature()
print(x.temp)

var y = Bird(name: "Raven")
print(y.name)

// init이 필요한가..?
// 값을 디폴트로 설정할 때는 값이 변화하지 않을 때 사용해라!!

x.temp = 20
print(x.temp)

struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}
// init을 이용해 초기 값을 받고 정제 처리를 할 수 있구나!!
let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
// boilingPointOfWater.temperatureInCelsius is 100.0
let freezingPointOfWater = Celsius(fromKelvin: 273.15)
// freezingPointOfWater.temperatureInCelsius is 0.0


struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red   = red
        self.green = green
        self.blue  = blue
    }
    init(white: Double) {
        red   = white
        green = white
        blue  = white
    }
}


let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)

// red, green, blue가 let으로 설정 됬는데 어떻게 변경되는거지??

print(magenta)
print(halfGray)

// let test = Color(1.0, 2.0, 3.0) // Error! 라벨을 설정한다면 축약 표현 사용 불가

struct Celsius2 {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    init(_ celsius: Double) {
        temperatureInCelsius = celsius
    }
}
let bodyTemperature = Celsius2(37.0) // init으로 굳이 처리를 하려면 _표현 사용
// bodyTemperature.temperatureInCelsius is 37.0

class SurveyQuestion {
    var text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
cheeseQuestion.ask()
// Prints "Do you like cheese?"
cheeseQuestion.response = "Yes, I do like cheese." // response가 Optional이기에 설정 가능

struct Size {
    var width = 0.0, height = 0.0
}

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    init() {}
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

print(Rect())
print(Rect(center: Point(x: 10, y: 10), size: Size(width: 10, height: 20)))
// 만약에 외부의 struct을 사용할 때 init을 이용해 받거나 초기 설정값에 적절한 값을 입력할 수 있다.


// Class Inheritance and Initialization
// 클래스 상속시 초기화를 어떻게 진행할까??

/**
 Designated init의 파라미터 중 일부를 기본값으로 설정해서
 이 convenience init안에서 Designated init을 호출 하여 초기화를 진행할 수 있어요.
 그러니 convenience init을 사용하려면 Designated init이 꼭 먼저 선언되어야겠죠? ㅎㅎ
 
 convenience init은 같은클래스에서 다른 이니셜라이저를 호출해야한다"라는 규칙이 있어요.
 */

class Vehicle {
    var numberOfWheels = 0
    var description: String {
        return "\(numberOfWheels) wheel(s)"
    }
}


let vehicle = Vehicle()
print("Vehicle: \(vehicle.description)")

class Bicycle: Vehicle {
    override init() {
        super.init()
        numberOfWheels = 2
    }
}

let bicycle = Bicycle()
print("Bicycle: \(bicycle.description)")

class Hoverboard: Vehicle {
    var color: String
    init(color: String) {
        self.color = color
        // super.init() implicitly called here
    }
    override var description: String {
        return "\(super.description) in a beautiful \(color)"
    }
}

let hoverboard = Hoverboard(color: "black")
print(hoverboard.description)

class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}


let food = Food()
print(food)

class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}

print(RecipeIngredient().name) // Unnamed 내부로직이 없다면 상위로

class ShoppingListItem: RecipeIngredient {
    var purchased = false
    var description: String {
        var output = "\(quantity) x \(name)"
        output += purchased ? " ✔" : " ✘"
        return output
    }
}

var breakfastList = [
    ShoppingListItem(),
    ShoppingListItem(name: "Bacon"),
    ShoppingListItem(name: "Eggs", quantity: 6),
]
breakfastList[0].name = "Orange juice"
breakfastList[0].purchased = true
for item in breakfastList {
    print(item.description)
}

// 초기값 nil 처리 관련 (실패할 수 있다면 init?을 사용할 것)
let wholeNumber: Double = 12345.0
let pi = 3.14159

if let valueMaintained = Int(exactly: wholeNumber) {
    print("\(wholeNumber) conversion to Int maintains value of \(valueMaintained)")
}
// Prints "12345.0 conversion to Int maintains value of 12345"

let valueChanged = Int(exactly: pi)
// valueChanged is of type Int?, not Int

if valueChanged == nil {
    print("\(pi) conversion to Int doesn't maintain value")
}
// Prints "3.14159 conversion to Int doesn't maintain value’

struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty { return nil }
        self.species = species
    }
}
// 이럴 때임
print(Animal(species: ""))

//enum TemperatureUnit {
//    case kelvin, celsius, fahrenheit
//    init?(symbol: Character) {
//        switch symbol {
//        case "K":
//            self = .kelvin
//        case "C":
//            self = .celsius
//        case "F":
//            self = .fahrenheit
//        default:
//            return nil
//        }
//    }
//}

//let fahrenheitUnit = TemperatureUnit(symbol: "F")
//if fahrenheitUnit != nil {
//    print("This is a defined temperature unit, so initialization succeeded.")
//}
//// Prints "This is a defined temperature unit, so initialization succeeded."
//
//let unknownUnit = TemperatureUnit(symbol: "X")
//if unknownUnit == nil {
//    print("This isn't a defined temperature unit, so initialization failed.")
//}
// Prints "This isn't a defined temperature unit, so initialization failed.

enum TemperatureUnit: Character {
    case kelvin = "K", celsius = "C", fahrenheit = "F"
}

let fahrenheitUnit = TemperatureUnit(rawValue: "F")
if fahrenheitUnit != nil {
    print("This is a defined temperature unit, so initialization succeeded.")
}
// Prints "This is a defined temperature unit, so initialization succeeded."

let unknownUnit = TemperatureUnit(rawValue: "X")
if unknownUnit == nil {
    print("This isn't a defined temperature unit, so initialization failed.")
}
// Prints "This isn't a defined temperature unit, so initialization failed.
// enum은 자동적으로
// init?(rawValue:) initializer: 를 설정해서 nil로 핸들링 할 수 있게 해준다.

class Product {
    let name: String
    init?(name: String) {
        if name.isEmpty { return nil }
        self.name = name
    }
}

class CartItem: Product {
    let quantity: Int
    init?(name: String, quantity: Int) {
        if quantity < 1 { return nil }
        self.quantity = quantity
        super.init(name: name)
    }
}

if let twoSocks = CartItem(name: "sock", quantity: 2) {
    print("Item: \(twoSocks.name), quantity: \(twoSocks.quantity)")
}
// Prints "Item: sock, quantity: 2"

if let zeroShirts = CartItem(name: "shirt", quantity: 0) {
    print("Item: \(zeroShirts.name), quantity: \(zeroShirts.quantity)")
} else {
    print("Unable to initialize zero shirts")
}
// Prints "Unable to initialize zero shirts"

class Document {
    var name: String?
    // this initializer creates a document with a nil name value
    init() {}
    // this initializer creates a document with a nonempty name value
    init?(name: String) {
        if name.isEmpty { return nil }
        self.name = name
    }
}

class AutomaticallyNamedDocument: Document {
    override init() {
        super.init()
        self.name = "[Untitled]"
    }
    override init(name: String) {
        super.init()
        if name.isEmpty {
            self.name = "[Untitled]"
        } else {
            self.name = name
        }
    }
}

class UntitledDocument: Document {
    override init() {
        super.init(name: "[Untitled]")! // nil 처리를 이렇게 강제로 벗길 수도 있다.
    }
}

/**
 class SomeSubclass: SomeClass {
     required init() {
         // subclass implementation of the required initializer goes here
     }
 }
 */ // 상속된 부분으로 구현이 안된다면 required를 이용하여 Init을 명시적으로 구현하도록 한다!

// 클로저와 어떻게 클래스를 함께 사용할까??
struct Chessboard {
    let boardColors: [Bool] = {
        var temporaryBoard: [Bool] = []
        var isBlack = false
        for i in 1...8 {
            for j in 1...8 {
                temporaryBoard.append(isBlack)
                isBlack = !isBlack
            }
            isBlack = !isBlack
        }
        return temporaryBoard
    }()
    func squareIsBlackAt(row: Int, column: Int) -> Bool {
        return boardColors[(row * 8) + column]
    }
}

let board = Chessboard()
print(board.squareIsBlackAt(row: 0, column: 1))
// Prints "true"
print(board.squareIsBlackAt(row: 7, column: 7))
// Prints "false’


