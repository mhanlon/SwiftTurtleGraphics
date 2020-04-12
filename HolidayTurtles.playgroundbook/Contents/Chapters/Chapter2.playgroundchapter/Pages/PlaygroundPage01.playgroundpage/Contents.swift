/*:
 [Previous](@previous)
 # Get in the Holiday Spirit
 **Goal**: Decorate an Egg!
 
 For Easter, we're going to color a few eggs. But first we've got to draw them. We use a little function we've written to draw our eggs on the screen.
 
 We exercise our new found use of instances of turtles (in the live sessions: https://www.twitch.tv/thecodehub).
 
 Try decorating our eggs. Or add some more. Play with the pen size and colors, if you like.
 
 */

//#-hidden-code
import UIKit
import PlaygroundSupport

//#-code-completion(everything, hide)
//#-code-completion(identifier, show, forward(_:), right(_:), drawThinLine(), backward(_:), left(_:), setColor(_:), penUp(), penDown(), home(), setPenSize(_:), setSpeed(_:), hideDegreesHelper(), showDegreesHelper(), for, randomColor(), Speed.fast, Speed.slow, Speed.superFast, randomColor(), .slow, .normal, .brisk, .fast, .superFast)
//#-code-completion(literal, show, color)
//#-code-completion(keyword, show, for)
//#-end-hidden-code

//#-editable-code
let turtle1 = Turtle(name: "EB", avatar: "🐰")
// Feel free to add other turtles, just don't forget to add them to the view controller, like we do with `turtle1` below.

func drawEgg(size: Float) {
    for i in 1 ... 180 {
        turtle1.forward(distance: size)
        turtle1.right(turnDegrees: 1)
    }
    for i in 1 ... 45 {
        turtle1.right(turnDegrees: 1)
        turtle1.forward(distance: size*2)
    }
    
    for i in 1 ... 90 {
        turtle1.right(turnDegrees: 1)
        turtle1.forward(distance: size * 0.58)
    }
    for i in 1 ... 45 {
        turtle1.right(turnDegrees: 1)
        turtle1.forward(distance: size * 2)
    }
}


turtle1.setBackgroundColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))

turtle1.penUp()

turtle1.left(turnDegrees: 135)
turtle1.forward(distance: 200)

turtle1.penDown()
turtle1.setPenSize(6)
turtle1.setColor(#colorLiteral(red: 0.807843137254902, green: 0.027450980392156862, blue: 0.3333333333333333, alpha: 1.0))
drawEgg(size: 1)

turtle1.penUp()

turtle1.home()
turtle1.left(turnDegrees: 45)
turtle1.backward(distance: 300)
turtle1.right(turnDegrees: 180)
turtle1.setColor(#colorLiteral(red: 0.4745098039215686, green: 0.8392156862745098, blue: 0.9764705882352941, alpha: 1.0))
turtle1.penDown()
turtle1.setPenSize(25)

drawEgg(size: 2)

let vc = TurtleViewController()
vc.setSpeed(.fast)
vc.addTurtle(turtle1)
PlaygroundPage.current.liveView = vc
//#-end-editable-code

// !!!TODO: You can add additional pages to this Swift Playground if you want to play around some more.
//: [Next](@next)
