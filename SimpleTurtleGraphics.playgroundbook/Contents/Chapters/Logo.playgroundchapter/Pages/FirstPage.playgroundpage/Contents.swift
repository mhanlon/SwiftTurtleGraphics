/*:
 # Turtles!
 This playground is designed to let you experiment with driving a 'turtle' around the screen to draw shapes. These commands were introduced in the [Fundamentals of Programming course](https://github.com/mhanlon/Fundamentals-of-Programming-Playground).

 You can use the following commands, play around with them and see what you can make!
 * `forward(`*n*`)` - go forward *n* steps
 * `backward(`*n*`)` - go backward *n* steps
 * `right(`*n*`)` - turn right *some number* of degrees
 * `left(`*n*`)` - turn left *n* of degrees
 * `setColor(`*c*`)` - set the color of the pen
 * `penUp()` - lift the pen so it doesn't draw while we move
 * `penDown()` - put the pen back down
 * `home()` - go to the center of the screen
 * `setPenSize(`*n*`)` - Change the width of the line to *n*
 * `setSpeed(`*speed*`)` - Change the speed of drawing to one of `.slow`, `.normal`, `.brisk`, `.fast`, `.superFast` (speed only works once and will be set to the last value you set)
 
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
    turtle.setPenSize(penSize:Float(penSize))
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
setPenSize(3)
forward(50)
right(60)
setColor(UIColor.cyan)
forward(50)
right(60)
setColor(UIColor.green)
forward(50)
right(60)
setColor(UIColor.red)
forward(50)
right(60)
setColor(UIColor.orange)
forward(50)
right(60)
setColor(UIColor.blue)
forward(50)

setPenSize(2)
penUp()
right(45)
backward(100)
penDown()
for _ in 1...45 {
    setColor(randomColor())
    forward(30)
    right(90)
    forward(5)
    right(85)
    forward(28)
}
//#-end-editable-code

//#-hidden-code
vc.addTurtle(turtle)
PlaygroundPage.current.liveView = vc
//#-end-hidden-code
//: You can add additional pages to this Swift Playground if you want to play around with
