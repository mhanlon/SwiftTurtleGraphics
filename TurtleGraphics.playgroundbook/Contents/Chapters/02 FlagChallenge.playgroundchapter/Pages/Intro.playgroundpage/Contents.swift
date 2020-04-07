//#-hidden-code

import PlaygroundSupport
import UIKit

//#-end-hidden-code


/*:
 [Previous](@previous)
 
 # Draw the Irish Flag
 **Goal**: Draw the Irish flag using a turtle
 
 Using the commands you just learned, try drawing the Irish flag. Or improve the flag we've drawn below.

 */

let turtle = Turtle(name: "Waffles", avatar: "🦊")

// Draw the green stripe
turtle.setPenSize(50)
turtle.setColor(.green)
turtle.right(turnDegrees:180)
turtle.forward(distance:100)

// Pick the pen up so we don't draw when we're moving to draw the next stripe.
turtle.penUp()

// Move into position for the next stripe.
turtle.left(turnDegrees:90)
turtle.forward(distance:50)
turtle.left(turnDegrees:90)

// Set our color and draw our middle stripe.
turtle.setColor(.white)
turtle.penDown()
turtle.forward(distance:100)

turtle.penUp()
turtle.right(turnDegrees:90)
turtle.forward(distance:50)
turtle.right(turnDegrees:90)
turtle.setColor(.orange)
turtle.penDown()
turtle.forward(distance:100)
/*:
 What happens if you delete the `penUp()` lines?
 
 What happens if you change the size of the pen or the length of the stripes?
 
 Did we need to set the pen color to white? Why might we want to?
 */

let vc = TurtleViewController()
vc.addTurtle(turtle)
PlaygroundPage.current.liveView = vc

//:[Next](@next)

