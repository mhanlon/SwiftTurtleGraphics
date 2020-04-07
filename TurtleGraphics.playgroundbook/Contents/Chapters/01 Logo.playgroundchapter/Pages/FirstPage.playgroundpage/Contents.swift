//#-hidden-code

import PlaygroundSupport
import UIKit

//#-end-hidden-code


/*:
 # Turtles!
 A place to play with the Swift Turtle module from The Code Hub.
 If you've completed the [Fundamentals of Programming Swift Playground Book](https://github.com/mhanlon/Fundamentals-of-Programming-Playground), you can use this playground to experiment with the Turtle class to which you were introduced. Or if you're taking the live class with The Code Hub (online at [https://twitch.tv/thecodehub](https://twitch.tv/thecodehub) or in a classroom), this is also a playground you might find useful.
 
 Here's some sample code you can mess around with and see what sort of things you might draw or do with a "turtle."
 
 Just bear in mind, if you add a new turtle you need to add it to the view controller like the others have been added. If this is all a little arcane, ask your instructor to walk you through it.
 
 If you're looking for the simplified, non-object oriented turtle, you can use the [SimpleTurtleGraphics](https://github.com/mhanlon/SwiftTurtleGraphics) version of this playground.
 
 For the explanation of the code and how it all works it's worth running through the playground book.
 You can use the following commands, play around with them and see what you can make!
 * `let turtle = Turtle(name:"Waffles", avatar:"🦊")` - Create a turtle named Waffles for us to use. You can use any emoji for the avatar.
 * `turtle.forward(distance:`*n*`)` - go forward *n* steps
 * `turtle.backward(distance:`*n*`)` - go backward *n* steps
 * `turtle.right(turnDegrees:`*n*`)` - turn right *some number* of degrees
 * `turtle.left(turnDegrees:`*n*`)` - turn left *n* of degrees
 * `turtle.setColor(`*c*`)` - set the color of the pen
 * `turtle.penUp()` - lift the pen so it doesn't draw while we move
 * `turtle.penDown()` - put the pen back down
 * `turtle.home()` - go to the center of the screen
 * `turtle.setPenSize(`*n*`)` - Change the width of the line to *n*
 * `let vc = TurtleViewController()` - creates a view controller to display our work in the playground
 * `vc.setSpeed(`*speed*`)` - Change the speed of drawing to one of `.slow`, `.normal`, `.brisk`, `.fast`, `.superFast` (speed only works once and will be set to the last value you set)

 */

let turtle1 = Turtle(name: "Waffles", avatar: "🦊")
turtle1.setPenSize(3)
turtle1.forward(distance: 50)
turtle1.right(turnDegrees: 60)
turtle1.setColor(UIColor.cyan)
turtle1.forward(distance: 50)
turtle1.right(turnDegrees: 60)
turtle1.setColor(UIColor.green)
turtle1.forward(distance: 50)
turtle1.right(turnDegrees: 60)
turtle1.setColor(UIColor.red)
turtle1.forward(distance: 50)
turtle1.right(turnDegrees: 60)
turtle1.setColor(UIColor.orange)
turtle1.forward(distance: 50)
turtle1.right(turnDegrees: 60)
turtle1.setColor(UIColor.blue)
turtle1.forward(distance: 50)

let turtle2 = Turtle(name: "Pancakes", avatar: "🐥")
turtle2.setPenSize(2)
turtle2.penUp()
turtle2.right(turnDegrees:45)
turtle2.backward(distance: 100)
turtle2.penDown()
for _ in 1...45 {
    turtle2.setColor(randomColor())
    turtle2.forward(distance: 30)
    turtle2.right(turnDegrees: 90)
    turtle2.forward(distance: 5)
    turtle2.right(turnDegrees: 85)
    turtle2.forward(distance: 28)
}

let vc = TurtleViewController()
//vc.setSpeed(.brisk)
vc.addTurtle(turtle1)
vc.addTurtle(turtle2)
PlaygroundPage.current.liveView = vc

//:[Next](@next)
