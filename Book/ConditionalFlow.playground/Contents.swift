import Foundation

//let first: Int = 5
//let second: Int = 7
//
//if first > second {
//    print("first > second")
//} else if first < second {
//    print("first < second")
//} else {
//    print("first == second")
//}

// 결과는 "first < seond"가 출력됩니다.

// MARK: switch

let integerValue: Int = 5

switch integerValue {
case 0:
    print("0")
case 1...10:
    print("1 ~ 10")
    fallthrough // fallthrough를 사용하면 다음 case도 진행
case Int.min..<0, 101..<Int.max:
    print("After fallthrough")
    break
default:
    print("default")
}


let doubleValue: Double = 23.0
// MARK: Double type 및 다중 케이스
switch doubleValue {
case 0:
    print("0")
case 1.5...10.5, 22.2..<50.2:
    print("1.5 ~ 10.5")
default:
    print("Double type default")
}

// MARK: case XXX: 다음에는 실행 가능한 코드가 위치해야함 (비어있으면 오류 발생)

// MARK: Tuple
typealias NameAge = (name: String, age: Int)

let tupleValue: NameAge = ("Raven", 100)

switch tupleValue {
case ("raven", 100):
    print("raven")
case ("Raven", _):
    print("Raven")
    fallthrough
case (_, 100):
    print(100)
default:
    print("Who??")
}

// MARK: let binding
switch tupleValue {
case ("raven", 100):
    print("raven")
case ("Raven", let age):
    print("Raven \(age)")
case (let name, 100):
    print("\(name) 100")
default:
    print("Who??")
}

let 직급: String = "사원"
let 연차: Int = 1
let 인턴여부: Bool = false

// MARK: switch 내부 조건절
switch 직급 {
case "사원" where 인턴여부 == true:
    print("인턴")
case "사원" where 연차 < 2 && 인턴여부 == false:
    print("신입사원")
default:
    print("직원 아님")
}

enum School {
    case primary, elementary, middle, high
}

let grad: School = School.high


switch grad {
case .primary:
    print("유치원")
case .middle:
    print("중학생")
case .high:
    print("고등학생")
default:
    print("성인")
}

// MARK: Unknown

enum Menu {
    case chicken
    case pizza
    case hamburger
}

let lunchMenu: Menu = .hamburger

//MARK: default가 없어도 unknown으로 대응
switch lunchMenu {
case .chicken:
    print("chicken")
case .pizza:
    print("pizza")
@unknown case _:
    print("???")
}
