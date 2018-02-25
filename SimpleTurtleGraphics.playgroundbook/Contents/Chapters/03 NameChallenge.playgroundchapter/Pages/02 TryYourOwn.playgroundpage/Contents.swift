/*:
 [Previous](@previous)
 # Write your own name
 **Goal**: Write out your own name, using a turtle.
 
 Now try writing out your own name. We've moved the turtle to a decent place to start writing.
 
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
//#-code-completion(keyword, for)
//#-end-hidden-code

//#-editable-code

// Move the turtle over to the left to begin writing out letters
penUp()
west()
forward(240)
right(90)
backward(200)
penDown()

// Now try writing a letter. The turtle is facing up, what letter are you going to draw?

//#-end-editable-code

/*:
 Which letter was hardest to draw?

 Could your organize this code better so that we can re-use some of the work we've done already for future words we might want to write out?
 
*/
//#-hidden-code
// TODO: Use turtle heading property to turn
// FUT: talk about odd spacing of characters
// FUT: use variables to define space
// FUT: functions to repeat letters
// FUT: design your own font for one letter, how do you want the letter to look?
vc.addTurtle(turtle)
PlaygroundPage.current.liveView = vc
//#-end-hidden-code
//: [Next](@next)

