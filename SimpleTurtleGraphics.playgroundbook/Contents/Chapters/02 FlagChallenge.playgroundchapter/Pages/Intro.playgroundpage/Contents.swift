/*:
 [Previous](@previous)

 # Draw the Irish Flag
 **Goal**: Draw the Irish flag using a turtle
 
 Using the commands you just learned, try drawing the Irish flag. Or improve the flag we've drawn below.
 
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
//#-code-completion(literal, show, Speed.slow, Speed.normal, Speed.brisk, Speed.fast, Speed.superFast)
//#-code-completion(keyword, for)
//#-end-hidden-code

//#-editable-code

// Draw the green stripe
setPenSize(50)
setColor(.green)
right(180)
forward(100)

// Pick the pen up so we don't draw when we're moving to draw the next stripe.
penUp()

// Move into position for the next stripe.
left(90)
forward(50)
left(90)

// Set our color and draw our middle stripe.
setColor(.white)
penDown()
forward(100)

penUp()
right(90)
forward(50)
right(90)
setColor(.orange)
penDown()
forward(100)
//#-end-editable-code
/*:
 What happens if you delete the `penUp()` lines?

 What happens if you change the size of the pen or the length of the stripes?
 
 Did we need to set the pen color to white? Why might we want to?
*/

//#-hidden-code
vc.addTurtle(turtle)
PlaygroundPage.current.liveView = vc
//#-end-hidden-code

//:[Next](@next)
