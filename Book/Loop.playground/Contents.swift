for i in 0...10 {
    if i.isMultiple(of: 2) { // 2에 배수냐??
        print(i)
        continue
    }
    print("홀수")
}


var result = 1
// wildCard
for _ in 1...3 {
    result *= 10
}

print(result)

// Dict
let friends: [String: Int] = ["Jay": 35, "Joe": 29, "Jenny": 31]

for tuple in friends {
    print(tuple) // dict 꺼내면 tuple로 줌
}

let address  = ["Jay": "Seoul", "Joe": "Gunpo", "Jenny": "Yang"]

for (name, value) in address {
    print(name, value) // dict 꺼내면 tuple로 줌
}

// Set
let region: Set<String> = ["02", "031", "032", "052"]

for num in region {
    print(num) // Random
}

// While

var friendNames = ["Raven", "Swift", "Pidgon", "Swallow"]

repeat {
    print("Bye \(friendNames.removeFirst())") // 삭제하면서 반환 (do ~ while 구문)
} while friendNames.isEmpty == false
            
            
print(friendNames)

var numbers = [3, 2345, 6, 3256]


// Loop 태깅
numbersLoop: for num in numbers {
    if num > 5 || num < 1 {
        continue numbersLoop
    }
    
    var count: Int = 0
    
    printLoop: while true {
        print(num)
        count += 1
        
        if count == num {
            break printLoop
        }
    }
    
    removeLoop: while true {
        if numbers.first != num {
            break numbersLoop
        }

        numbers.removeFirst()
    }
}

