import UIKit

class Bird {
    var currentSize = 4.3
    var description: String {
        return "This bird's size is \(currentSize)"
    }
    
    func makeNoise() -> String {
        return "make noise"
    }
}

let bird = Bird()

print(bird.description)

class Raven: Bird {
    var canFly = true
    
    override var currentSize: Double {
        didSet {
            canFly = currentSize < 8
        }
    }
    
    override var description: String {
        return "This raven's size is \(currentSize) and can\(canFly ? " fly" : "'t fly")"
    }
}

let raven = Raven()
raven.currentSize = 32
print(raven.canFly)
print(raven.description)

