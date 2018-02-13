/*:
 [Previous](@previous)
 # Write your own name
 **Goal**: Write out your own name, using a turtle.
 
 Now try writing out your own name. We've moved the turtle to a decent place to start writing.
 

 */

import PlaygroundSupport
import UIKit

let turtle1 = Turtle(name: "Waffles", avatar: "🦊")
// Write out your name
turtle1.penUp()
turtle1.west()
turtle1.forward(distance: 240)
turtle1.right(turnDegrees: 90)
turtle1.backward(distance: 200)
turtle1.penDown()

// Start writing!


/*:
 Which letter was hardest to draw?
 
 Could your organize this code better so that we can re-use some of the work we've done already for future words we might want to write out?
 
 */
let vc = TurtleViewController()
vc.setSpeed(.brisk)
vc.addTurtle(turtle1)
PlaygroundPage.current.liveView = vc

//: [Next](@next)
