import UIKit





extension Double {
    func myRround(to places: Int) -> Double {
        let h = Double(truncating: pow(10, places) as NSNumber)
        return Double(Int(self * h))/h
    }
    
    func round(to places: Int) -> Double {
        // places에 Double을 해주기만 해도 되는군.
        // n <- self 라서 self 그 자체는 변하지 않음
        let precisionNumber = pow(10, Double(places))
        var n = self
        n = n * precisionNumber
        n.round()
        n = n / precisionNumber
        return n
    }
}

let myDouble = 3.141592
var myDouble2 = 3.141592

let myRoundedDouble = String(format: "%.1f", myDouble)

print(myRoundedDouble)

// round는 myDouble 변수가 갖고 있는 값이 변하게 됨.
//myDouble.round()
print(myDouble2.round(to: 2))
print(myDouble2)



/// 우리가 소스에 접근할 수 없는 것 조차 extension으로 확장할 수 있다.
// Circle 버튼을 만들고 싶은데, 할때마다 cornerRadius 등을 수정하기가 귀찮다면.
extension UIButton {
    func makeCircular() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}

let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .red
button.makeCircular()


/// protocol 역시 확장할 수 있다.
/// 이전 protocols demo에서, Super class에 fly를 구현하면 subclass에서는 상속되므로 이를 구현하지 않아도 된다.
/// 마찬가지로 extension으로 이와 유사하게 구현할 수 있다.
/// 이렇게 하면 그러면 각자 구체적 object에 구현하지 않아도 오류가 나지 않음.

protocol Flyable {
    func fly()
}

extension Flyable {
    func fly(){
        print("The object takes off into the air.")
    }
}

struct Airplane: Flyable{
}

let myPlane = Airplane()
myPlane.fly()


/// UITextFieldDelegete 프로토콜을 채택했을 때, 프로토콜에 작성된 모든 method를 구현하지 않아도 되는 이유가 여기에 있다.
/// Optional 선택적으로 구현해도 되는 이유는 이미 extension으로 default implementation이 구현되어 있기 때문이다.
/// 이는 공식 문서에서도 찾아볼 수 있음.

protocol SomeProtocol {
    
}

// Adopting Protocols
/// extension으로 protocol 도 adopt할 수 있다.
/// 이를 이용해 코드를 리팩토링할 수 있다.
extension Airplane: SomeProtocol {
    // ...
}


