
class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell.")
        }
    }
    
    func fly(){
        print("The bird flaps its wings and lifts off into the sky.")
    }
}

class Eagle: Bird {
    func soar(){
        print("The eagle glides in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim(){
        print("The penguin paddles through the water.")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: Bird){
        flyingObject.fly()
    }
}

struct Airplane {
    
}

let myEagle = Eagle()
myEagle.fly()
myEagle.layEgg()
myEagle.soar()

let myPenguin = Penguin()
myPenguin.layEgg()
myPenguin.swim()
// 펭귄은 새이긴 한데 날지는 못해...
myPenguin.fly()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle)
museum.flyingDemo(flyingObject: myPenguin)
