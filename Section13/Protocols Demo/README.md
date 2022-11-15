#  Protocol Demo

프로토콜이 해결할 수 있는 문제는 무엇인가?

superclass Bird
subclass Eagle, Penguin
그런데, 펭귄은 새이나 날지 못한다.

struct FlyingMuseum  

museum.flyingDemo(flyingObject: myPenguin) 을 해도, 펭귄은 bird이므로 오류가 나지 않음.
이건 의도와 다른 코드임. 그럼에도 오류는 나지 않음. 이게 상속에만 기댔을 때 나타나는 문제임.
+ airplane도 fly할 수 있지만, bird가 아니라 flyingDemo 넣을 수 없음. 
확장성과 의존성에 문제가 생김.
그럼 어떻게? Airplane structure가 Bird를 상속하게? 스트럭쳐는 상속할 수 없으므로 class로 바꿔야함. 그렇게 바꿔도, Bird의 fly method가 airplane에 fit하지 않음. override 필요.

flyingDemo에 넣기 위해 이악물고 Airplane을 Bird로 했지만.. 얘가 layEgg? 말이 안됨. 불필요한 메서드.

flying Behavior와 Bird class를 분리시켜
structure과 class 모두 flying 행위를 할 수 있음을 나타내는 방법 -> 프로토콜

protocol 을 채택한다. adopt

canFly를 채택한 객체들은 모두 fly method를 구현해야만 한다.

```swift
protocol CanFly {
    func fly()
}
```
행위를 protocol로 하면, 쓸데 없는 상속을 피할 수 있음.
필요한 곳에만 채택하면 됨

## adopting Multiple Protocols
n개의 프로토콜을 채택할 수 있음

## In Addition to a Superclass
superclass 먼저 쓴 후, 채택할 프로토콜을 나열한다.
- UITextFieldDelegate 역시 프로토콜이다.
