# SwiftTurtleGraphics
A couple playgrounds where you can play around with turtle graphics in Swift Playgrounds on your iPad. Many of the concepts and techniques you would use in these playgrounds are introduced in the [Fundamentals of Programming playground](https://github.com/mhanlon/Fundamentals-of-Programming-Playground).


## SimpleTurtleGraphicsPlayground.playgroundbook
This playground is designed to be a simplified version of the Turtle Graphics syntax that will give learners the chance to use a relatively small set of functions to drive a 'turtle' around the playground.

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

The first and fourth chapters are for open exploration and the other chapters offer some challenges, if you're stuck for ideas. They include drawing letters with the turtle and drawing common shapes like flags.



## TurtleGraphicsPlayground.playgroundbook
This playground is designed to be more like the Python treatment of turtle graphics, but with Swift.

You can use the following commands, play around with them and see what you can make!

* `let turtle = Turtle(name:"Waffles", avatar:"í ¾í¶Š")` - Create a turtle named Waffles for us to use. You can use any emoji for the avatar.
* `turtle.forward(distance:`*n*`)` - go forward *n* steps
* `backward(distance:`*n*`)` - go backward *n* steps
* `right(turnDegrees:`*n*`)` - turn right *some number* of degrees
* `left(turnDegrees:`*n*`)` - turn left *n* of degrees
* `setColor(`*c*`)` - set the color of the pen
* `penUp()` - lift the pen so it doesn't draw while we move
* `penDown()` - put the pen back down
* `home()` - go to the center of the screen
* `setPenSize(`*n*`)` - Change the width of the line to *n*
* `let vc = TurtleViewController()` - creates a view controller to display our work in the playground
* `vc.setSpeed(`*speed*`)` - Change the speed of drawing to one of `.slow`, `.normal`, `.brisk`, `.fast`, `.superFast` (speed only works once and will be set to the last value you set)

The content is the same as the simplified version, just with a little bit more of the underpinnings exposed.