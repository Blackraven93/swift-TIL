import UIKit
import Foundation

let n:[Int] = [10, 10]
let (a, b) = (n[0], n[1])

for _ in 0..<b {
    print(Array(repeating: "*", count: a).joined())
}


/**
 
 */


func solution(_ numbers:[Int]) -> [Int] {
    var result = [Int]()

    for i in 0 ..< numbers.count {
        for j in i + 1 ..< numbers.count {
            let num = numbers[i] + numbers[j]
            if !result.contains(num) {
                result.append(num)
            }
        }
    }
    return result.sorted()
}


import Foundation

func mySolution(_ numbers:[Int]) -> [Int] {
    var temp:[Int] = []

    for x in 0...numbers.count - 2 {
        for y in (x + 1)...numbers.count - 1 {

            temp.append(numbers[x]+numbers[y])
        }
    }



    let removedDuplicate: Set = Set(temp)

    return Array(removedDuplicate).sorted(by: <)
}


print(solution([2,20,22,40,7,13]))
print(mySolution([2,20,22,40,7,13]))



func solution2(_ x:Int, _ n:Int) -> [Int64] {
    return Array(1...n).map { Int64($0 * x) }
}

func mySolution2(_ x:Int, _ n:Int) -> [Int64] {
    var answer:[Int64] = []
       for count in 0..<n {
           answer.append(Int64(x * (count + 1)))
       }
       return answer
}

print(solution2(3, 5))
print(mySolution2(3, 5))
