/*:
 [Previous](@previous)
 # Get in the Holiday Spirit
 **Goal**: Draw a better Christmas tree!
 
 Now we've got our Christmas tree colored... but what could you do to improve it?
 */

//#-hidden-code
import UIKit
import PlaygroundSupport

let vc = TurtleViewController()
vc.setSpeed(.brisk)

func setSpeed(_ speed: Speed) {
    vc.setSpeed(speed)
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
forward(60)
east()
// Start our trunk
setPenSize(5)
setColor(#colorLiteral(red: 0.30980393290519714, green: 0.20392157137393951, blue: 0.03921568766236305, alpha: 1.0))
penDown()
for i in 1...5 {
    forward(40)
    left(90)
    forward(5)
    left(90)
    forward(40)
    right(90)
    forward(5)
    right(90)
}
left(180)

setColor(#colorLiteral(red: 0.34117648005485535, green: 0.6235294342041016, blue: 0.16862745583057404, alpha: 1.0))

forward(130)

// Draw the tree now
var countdown = 300
for i in 1 ... 30 {
    east()
    forward(countdown)
    left(90)
    forward(5)
    west()
    countdown=countdown-5
    forward(countdown)
    countdown=countdown-5
    right(90)
    forward(5)
}

// Admire our work
penUp()
home()

//#-end-editable-code

//#-hidden-code
vc.addTurtle(turtle)
PlaygroundPage.current.liveView = vc
// !!!TODO: You can add additional pages to this Swift Playground if you want to play around some more.
//#-end-hidden-code
