import UIKit

/**
 struct에 없고 class에 있는 기능
 
    1. 상속 가능
    2. 런타임 타입 캐스팅
    3.
 */
struct Resolution {
    var width = 0
    var height = 0
}

class Retangule {
    var width = 10
    var height = 20
}

class VideoMode {
    var resolution = Resolution()
    var change = Resolution.init(width: 20, height: 10)
    var rec = Retangule()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}


let someVideoMode = VideoMode()
someVideoMode.resolution.width = 10

print(someVideoMode.resolution.width)


let vga = Resolution(width: 640, height: 480)
print(vga)

// struct, Enum은 value type ( 값으로써 복사해서 저장됨 )

// class는 referece type 참조타입 ( 주소값을 복사 )

class Greeting {
    var name: String
    
    
    init(name:String) {
        self.name = name
    }
    
    func greeting() {
        print("Hello!! everyone my name is \(self.name)")
    }
}

var bird = Greeting(name: "raven")
var newBird = bird
var newBird2 = bird

newBird.name = "swallow"
bird.greeting()

// 초기 생성한 bird가 변화함

print(newBird === newBird2) // reference 타입의 일치를 확인하는 방법


