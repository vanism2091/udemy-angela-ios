protocol CanFly {
    func fly()
}


class Bird_ {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell.")
        }
    }
    // 모든 새가 날 수 있는 것은 아니므로, fly method를 삭제한다.
}

class Eagle_: Bird_, CanFly {
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky.")
    }
    
    func soar(){
        print("The eagle glides in the air using air currents.")
    }
}

class Penguin_: Bird_ {
    func swim(){
        print("The penguin paddles through the water.")
    }
}

struct FlyingMuseum_ {
    // Protocol을 type으로 넣을 수 있다.
    func flyingDemo(flyingObject: CanFly){
        flyingObject.fly()
    }
}

struct Airplane_: CanFly {
    func fly() {
        print("The airplane uses  its engine to lift off into the air.")
    }
}

let myEagle_ = Eagle_()
let myPenguin_ = Penguin_()
let myPlain_ = Airplane_()

let museum_ = FlyingMuseum_()

myEagle_.fly()
myEagle_.layEgg()
myEagle_.soar()


myPenguin_.layEgg()
myPenguin_.swim()
// 펭귄은 새이긴 한데 날지는 못해...
//myPenguin.fly()

museum.flyingDemo(flyingObject: myEagle)
museum.flyingDemo(flyingObject: myPenguin)

