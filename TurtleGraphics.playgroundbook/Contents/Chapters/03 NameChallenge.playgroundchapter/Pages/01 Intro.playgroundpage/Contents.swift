//#-hidden-code

import PlaygroundSupport
import UIKit

//#-end-hidden-code

/*:
 [Previous](@previous)
 # Write my name
 **Goal**: Write out my name, using a turtle.
 
 We could use our turtle to draw shapes, now can we make letters out of those shapes?
 
 Below we draw the name "MATT."
 
 Can you change the letters we draw? Can you write your own name?

 */

let turtle1 = Turtle(name: "Waffles", avatar: "🦊")
// Write out my name
turtle1.penUp()
turtle1.west()
turtle1.forward(distance: 240)
turtle1.right(turnDegrees: 90)
turtle1.backward(distance: 200)
turtle1.penDown()
// 'M'
turtle1.forward(distance: 200)
turtle1.right(turnDegrees: 135)
turtle1.forward(distance: 75)
turtle1.left(turnDegrees: 90)
turtle1.forward(distance: 75)
turtle1.right(turnDegrees: 135)
turtle1.forward(distance: 200)

// Move to the next character
turtle1.penUp()
turtle1.left(turnDegrees: 90)
turtle1.forward(distance: 25)
turtle1.left(turnDegrees: 90)
turtle1.penDown()

// 'A'
turtle1.right(turnDegrees: 10)
turtle1.forward(distance: 200)
turtle1.right(turnDegrees: 160)
turtle1.forward(distance: 200)
// The line
// how else could i have moved here?
turtle1.right(turnDegrees: 180)
turtle1.forward(distance: 100)
turtle1.left(turnDegrees: 80)
turtle1.forward(distance: 35)
// What did we do to get back to the edge of the letter?
turtle1.backward(distance: 35)
turtle1.right(turnDegrees: 80)
turtle1.backward(distance: 100)

// Move to the next character
turtle1.penUp()
turtle1.right(turnDegrees: 100)
turtle1.forward(distance: 25)
turtle1.forward(distance: 50)
turtle1.right(turnDegrees: 270)
turtle1.penDown()

// 'T'
turtle1.forward(distance: 200)
turtle1.left(turnDegrees: 90)
turtle1.forward(distance: 50)
turtle1.backward(distance: 100)
turtle1.forward(distance: 50)
turtle1.left(turnDegrees: 90)
turtle1.forward(distance: 200)

// Move to the next character
turtle1.penUp()
turtle1.left(turnDegrees: 90)
turtle1.forward(distance: 100)
turtle1.left(turnDegrees: 90)
turtle1.penDown()

// 'T'
turtle1.forward(distance: 200)
turtle1.left(turnDegrees: 90)
turtle1.forward(distance: 50)
turtle1.backward(distance: 100)
turtle1.forward(distance: 50)
turtle1.left(turnDegrees: 90)
turtle1.forward(distance: 200)

/*:
 Which letter was hardest to draw?
 
 Can you write your own name?
 
 Could your organize this code better so that we can re-use some of the work we've done already for future words we might want to write out?
 
 */
let vc = TurtleViewController()
vc.setSpeed(.brisk)
vc.addTurtle(turtle1)
PlaygroundPage.current.liveView = vc

//: [Next](@next)
