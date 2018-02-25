/*:
 [Previous](@previous)
 # Write my name
 **Goal**: Write out my name, using a turtle.
 
 We could use our turtle to draw shapes, now can we make letters out of those shapes?
 
 Below we draw the name "MATT."
 
 Can you change the letters we draw? Can you write your own name?
 
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

// Write out my name
penUp()
west()
forward(240)
right(90)
backward(200)
penDown()
// 'M'
forward(200)
right(135)
forward(75)
left(90)
forward(75)
right(135)
forward(200)

// Move to the next character
penUp()
left(90)
forward(25)
left(90)
penDown()

// 'A'
right(10)
forward(200)
right(160)
forward(200)
// The line
// how else could i have moved here?
right(180)
forward(100)
left(80)
forward(35)
// What did we do to get back to the edge of the letter?
backward(35)
right(80)
backward(100)

// Move to the next character
penUp()
right(100)
forward(25)
forward(50)
right(270)
penDown()

// 'T'
forward(200)
left(90)
forward(50)
backward(100)
forward(50)
left(90)
forward(200)

// Move to the next character
penUp()
left(90)
forward(100)
left(90)
penDown()

// 'T'
forward(200)
left(90)
forward(50)
backward(100)
forward(50)
left(90)
forward(200)

//#-end-editable-code

/*:
 Which letter was hardest to draw?

 Can you write your own name?

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

