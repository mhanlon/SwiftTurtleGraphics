/*:
 [Previous](@previous)
# On Your Own
 **Goal**: Take the lessons you've learned in the prior steps further
 
 Can you draw the flag of another country? Can you write your own name? What shapes and images can you create with turtle graphics?
 */

//#-hidden-code
import PlaygroundSupport
import UIKit
let turtle = Turtle(name: "Waffles", avatar: "🐒")
func forward(_ distance:Int) {
    turtle.forward(distance: Float(distance))
}

func backward(_ distance:Int) {
    turtle.backward(distance: Float(distance))
}

func right(_ degrees:Int) {
    turtle.right(turnDegrees: Float(degrees))
}

func left(_ degrees:Int) {
    turtle.left(turnDegrees: Float(degrees))
}

func west() {
    turtle.west()
}

func east() {
    turtle.east()
}

func north() {
    turtle.north()
}

func south() {
    turtle.south()
}

func setColor(_ color:UIColor) {
    turtle.setColor(color)
}

func penUp() {
    turtle.penUp()
}

func penDown() {
    turtle.penDown()
}
func home() {
    turtle.home()
}

func setPenSize(_ penSize: Int) {
    turtle.setPenSize(Float(penSize))
}

let vc = TurtleViewController()
vc.setSpeed(.brisk)

func setSpeed(_ speed: Speed) {
    vc.setSpeed(speed)
}

func setTurtleShape(_ shape: String) {
    turtle.setAvatar(shape)
}

//#-code-completion(everything, hide)
//#-code-completion(identifier, show, forward(_:), right(_:), drawThinLine(), backward(_:), left(_:), setColor(_:), penUp(), penDown(), home(), setPenSize(_:), setSpeed(_:), hideDegreesHelper(), showDegreesHelper(), for, randomColor(), Speed.fast, Speed.slow, Speed.superFast, randomColor(), .slow, .normal, .brisk, .fast, .superFast)
//#-code-completion(literal, show, color)
//#-code-completion(keyword, show, for)
//#-end-hidden-code

//#-editable-code
//#-end-editable-code

//#-hidden-code
vc.addTurtle(turtle)
PlaygroundPage.current.liveView = vc
// !!!TODO: You can add additional pages to this Swift Playground if you want to play around some more.
//#-end-hidden-code

