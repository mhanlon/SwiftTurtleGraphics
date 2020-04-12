/*:
 [Previous](@previous)
 # Get in the Holiday Spirit
 **Goal**: Decorate an Egg Some More!
 
 Now that we have the ability to draw eggs, let's try changing the background color, adding some grass. The `drawGrassBlade()` function below is okay, but it could be improved. What could *you* do with it?
 
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
let turtle1 = Turtle(name: "Chick", avatar: "🐥")
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

func drawGrassBlade(size: Float) {
    turtle1.setColor(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))
    turtle1.forward(distance: size)
    // Should this function do more?
}


turtle1.setBackgroundColor(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))

turtle1.penUp()

turtle1.left(turnDegrees: 135)
turtle1.forward(distance: 200)

turtle1.penDown()
turtle1.setPenSize(6)
turtle1.setColor(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
drawEgg(size: 1)

turtle1.penUp()

turtle1.home()
turtle1.left(turnDegrees: 45)
turtle1.backward(distance: 300)
turtle1.right(turnDegrees: 180)
turtle1.setColor(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
turtle1.penDown()
turtle1.setPenSize(25)

drawEgg(size: 2)

let vc = TurtleViewController()
vc.setSpeed(.fast)
vc.addTurtle(turtle1)
PlaygroundPage.current.liveView = vc
//#-end-editable-code

// !!!TODO: You can add additional pages to this Swift Playground if you want to play around some more.
