import Foundation

class Animal {
    var name: String

    init(n: String) {
        name = n
    }
}

class Human: Animal {
    func code() {
        print("Typing away...")
    }
}

class Fish: Animal {
    func breatheUnderWater() {
        print("Breathing under water.")
    }
}

let sei = Human(n: "Sei Kim")
let gildong = Human(n: "Gildong Hong")
let nemo = Fish(n: "Nemo")

/// sei, gildong과 nemo는 human, animal로 다른 Type이지만,
/// Animal이라는 공통의 super class가 있음
let neighbours = [sei, gildong, nemo]

let neighbour1 = neighbours[0]

let myDouble = 0.0
// 이건 타입캐스팅이 아니라 int를 새로 init 하는 것
// create new integer object
let myDoubleAsAnInt = Int(myDouble)


if neighbours[0] is Human {
    print("First Neibour is a Human")
}

// [Warn] 'is' test is always true
if sei is Human { 
    print("First Neibour is a Human")
}

func findNemo(from animals:[Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name)
            // typeCasting.swift:52:20: error: value of type 'Animal' has no member 'breatheUnderWater'
            // animal.breatheUnderWater()
            
            // Force down-casting
            let fish = animal as! Fish
            fish.breatheUnderWater()

            (animal as? Fish)?.breatheUnderWater()

            let animalFish = fish as Animal
        }
    }
}

findNemo(from: neighbours)

let fish2 = neighbours[1] as? Fish
fish2?.breatheUnderWater()

if let fish3 = neighbours[1] as? Fish {
    fish3.breatheUnderWater()
} else {
    print("Casting has failed.")
}

let num = 12
let neighbours2: [Any] = [sei, gildong, nemo, num]
// let neighbours2: [AnyObject] = [sei, gildong, nemo, num]
// num은 structure, class가 아니므로 error 발생

// let neighbours2: [NSObject] = [sei, gildong, nemo, num]
// 모두 ㄴㄴ 

let num2: NSNumber = 12
let word: NSString = "12"
let neighbours3: [NSObject] = [num2, word]
