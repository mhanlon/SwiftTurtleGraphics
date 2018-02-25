/*:
 [Previous](@previous)
 # Some Letter Examples
 
 If you get stuck writing your own name, try using some of the examples below.
 
 To use one of our new letter functions you need to call it *after* the function is defined.after
 
 Like so,
 
 ```
 func letterA() {
    ... code ...
 }
 
 // This is where we call the function:
 letterA()
 ```
 
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


func letterA() {
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
}

func letterB() {
    // 'B'
    forward(200)
    // Now draw the curved part of the 'B'
}

func letterC() {
    // 'C'
}

func letterD() {
    // 'D'
}

func letterE() {
    // 'E'
    forward(200)
    right(90)
    forward(100)
    backward(100)
    right(90)
    forward(100)
    left(90)
    forward(90)
    backward(90)
    right(90)
    forward(100)
    left(90)
    forward(100)
}

func letterF() {
    // 'F'
    forward(200)
    right(90)
    forward(100)
    backward(100)
    right(90)
    forward(100)
    left(90)
    forward(90)
    backward(90)
    right(90)
    forward(100)
}

func letterG() {
    // 'G'
}

func letterH() {
    // 'H'
    forward(200)
    backward(100)
    right(90)
    forward(100)
    left(90)
    forward(100)
    backward(200)
}

func letterI() {
    // 'I'
}

func letterJ() {
    // 'J'
}

func letterK() {
    // 'K'
}

func letterL() {
    // 'L'
}

func letterM() {
    // 'M'
    forward(200)
    right(135)
    forward(75)
    left(90)
    forward(75)
    right(135)
    forward(200)
}

func letterN() {
    // 'N'
}

func letterO() {
    // 'O'
}

func letterP() {
    // 'P'
}

func letterQ() {
    // 'Q'
}

func letterR() {
    // 'R'
}

func letterS() {
    // 'S'
}

func letterT() {
    // 'T'
    forward(200)
    left(90)
    forward(50)
    backward(100)
    forward(50)
    left(90)
    forward(200)
}

func letterU() {
    // 'U'
}

func letterV() {
    // 'V'
}

func letterW() {
    // 'W'
}

func letterX() {
    // 'X'
}

func letterY() {
    // 'Y'
}

func letterZ() {
    // 'Z'
    penUp()
    forward(200)
    penDown()
    right(90)
    forward(100)
    right(135)
    forward(150)
    left(135)
    forward(100)
}


    // Now try writing a letter. The turtle is facing up, what letter are you going to draw?

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

