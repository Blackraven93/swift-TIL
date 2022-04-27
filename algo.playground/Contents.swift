import UIKit
import Foundation

let n:[Int] = [10, 10]
let (a, b) = (n[0], n[1])

for _ in 0..<b {
    print(Array(repeating: "*", count: a).joined())
}

