/*:
 [Previous](@previous)
# On Your Own
 **Goal**: Take the lessons you've learned in the prior steps further
 
 Can you draw the flag of another country? Can you write your own name? What shapes and images can you create with turtle graphics?
 */

import PlaygroundSupport
import UIKit

let turtle1 = Turtle(name: "Waffles", avatar: "🦊")
// Feel free to add other turtles, just don't forget to add them to the view controller, like we do with `turtle1` below.

let vc = TurtleViewController()
vc.setSpeed(.brisk)
vc.addTurtle(turtle1)
PlaygroundPage.current.liveView = vc
