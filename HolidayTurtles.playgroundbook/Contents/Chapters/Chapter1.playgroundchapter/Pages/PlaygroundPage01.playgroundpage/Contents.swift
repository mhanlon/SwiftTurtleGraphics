/*:
 [Previous](@previous)
 # Get in the Holiday Spirit
 **Goal**: Draw a Christmas tree!
 
 To get in the holiday spirit, we're going to add a Christmas tree to our playground with Turtle Graphics.
 
 Below we draw a pretty simple, pretty pasty-looking Christmas tree. Can you improve it?
 */

//#-hidden-code
import UIKit
import PlaygroundSupport

let vc = TurtleViewController()
vc.setSpeed(.brisk)

func setSpeed(_ speed: Speed) {
    vc.setSpeed(speed)
}

func hideDegreesHelper() {
    vc.hideDegreesHelper()
}

func showDegreesHelper() {
    vc.showDegreesHelper()
}
//#-code-completion(everything, hide)
//#-code-completion(identifier, show, forward(_:), right(_:), drawThinLine(), backward(_:), left(_:), setColor(_:), penUp(), penDown(), home(), setPenSize(_:), setSpeed(_:), hideDegreesHelper(), showDegreesHelper(), for, randomColor(), Speed.fast, Speed.slow, Speed.superFast, randomColor(), .slow, .normal, .brisk, .fast, .superFast)
//#-code-completion(literal, show, color)
//#-code-completion(keyword, show, for)
//#-end-hidden-code

//#-editable-code
penUp()
south()
forward(350)
west()
forward(20)
north()
// Start our trunk
setPenSize(5)
setColor(#colorLiteral(red: 0.30980393290519714, green: 0.20392157137393951, blue: 0.03921568766236305, alpha: 1.0))
penDown()
forward(25)
// Start the base of the tree
setColor(#colorLiteral(red: 0.19607843458652496, green: 0.34117648005485535, blue: 0.10196078568696976, alpha: 1.0))
left(90)
forward(150)
// Draw the left side
right(110)
forward(500)
// Turn and draw the right side
right(140)
forward(500)
// Finish the base
right(110)
forward(150)

// Draw the other half of the trunk
setColor(#colorLiteral(red: 0.30980393290519714, green: 0.20392157137393951, blue: 0.03921568766236305, alpha: 1.0))
left(90)
forward(25)
right(90)
forward(40)
// Admire our work
penUp()
home()

//#-end-editable-code

//#-hidden-code
vc.addTurtle(turtle)
PlaygroundPage.current.liveView = vc
// !!!TODO: You can add additional pages to this Swift Playground if you want to play around some more.
//#-end-hidden-code
