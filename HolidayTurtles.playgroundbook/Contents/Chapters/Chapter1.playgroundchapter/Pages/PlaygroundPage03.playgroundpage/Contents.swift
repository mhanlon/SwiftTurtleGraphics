/*:
 [Previous](@previous)
 # Get in the Holiday Spirit
 **Goal**: Decorate our Christmas tree!
 
 Now we've got our Christmas tree, shouldn't we decorate it?
 
 We can now use `drawOurTree()` to draw our nice, colored tree. Or maybe you prefer the original, kind of bare one. In that case, use `drawOurBareTree()` below to draw the original, bare tree. Simply swap out the code below.
 
 Can you decorate the tree?
 
 Can you add a star on the top?
 
 Can you add a squirrel in the tree? Tinsel? A giant wolly mammoth who wandered onto a Christmas scene in the middle of a prehistoric woods?
*/

//#-hidden-code
import UIKit
import PlaygroundSupport

let vc = TurtleViewController()
vc.setSpeed(.brisk)

func setSpeed(_ speed: Speed) {
    vc.setSpeed(speed)
}

func drawOurBareTree() {
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
}

func drawOurTree() {
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
}
//#-code-completion(everything, hide)
//#-code-completion(identifier, show, drawOurBareTree(), drawOurTree(), forward(_:), right(_:), drawThinLine(), backward(_:), left(_:), setColor(_:), penUp(), penDown(), home(), setPenSize(_:), setSpeed(_:), hideDegreesHelper(), showDegreesHelper(), for, randomColor(), Speed.fast, Speed.slow, Speed.superFast, randomColor(), .slow, .normal, .brisk, .fast, .superFast)
//#-code-completion(literal, show, color)
//#-code-completion(keyword, show, for)
//#-end-hidden-code

//#-editable-code

// You can use drawOurTree() or drawOurBareTree() here
drawOurTree()

setColor(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))

setPenSize(10)
south()
forward(50)
west()
forward(40)

// Draw an ornament (remember to put the penDown()!)
penDown()
for i in 1...36 {
    forward(1)
    right(10)
}

//Admire our work
penUp()
home()

//#-end-editable-code

//#-hidden-code
vc.addTurtle(turtle)
PlaygroundPage.current.liveView = vc
//#-end-hidden-code
