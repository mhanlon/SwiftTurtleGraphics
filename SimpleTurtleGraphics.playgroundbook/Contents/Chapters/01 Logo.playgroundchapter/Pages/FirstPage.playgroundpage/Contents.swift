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
//#-code-completion(identifier, show, forward(_:), right(_:), drawThinLine(), backward(_:), left(_:), setColor(_:), penUp(), penDown(), home(), setPenSize(_:), setSpeed(_:), hideDegreesHelper(), showDegreesHelper(), for, randomColor(), Speed.fast, Speed.slow, Speed.superFast, randomColor(), Speed.slow, Speed.normal, Speed.brisk, Speed.fast, Speed.superFast)
//#-code-completion(literal, show, color)
//#-code-completion(keyword, show, for)
//#-code-completion(description, show, .fast, Speed.slow, Speed.superFast, randomColor(), Speed.slow, Speed.normal, Speed.brisk, Speed.fast, Speed.superFast)
//#-end-hidden-code

//#-editable-code
setPenSize(3)
forward(50)
right(60)
setColor(#colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1))
forward(50)
right(60)
setColor(#colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1))
forward(50)
right(60)
setColor(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1))
forward(50)
right(60)
setColor(#colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1))
forward(50)
right(60)
setColor(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))
forward(50)

setPenSize(2)
penUp()
right(45)
backward(100)
penDown()
Turtle.repeat(45) {
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
//: [Next](@next)
