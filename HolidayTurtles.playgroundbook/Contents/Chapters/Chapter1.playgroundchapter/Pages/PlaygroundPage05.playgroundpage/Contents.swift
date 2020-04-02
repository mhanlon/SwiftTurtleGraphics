/*:
 [Previous](@previous)
 # Setting the scene
 **Goal**: Change up our background color
 
 So far we've drawn our holiday decorations against a pretty whited out scene... what if we wanted to set the background color to something more evening-like?
 
 You can now use the `setBackgroundColor()` command to shed a little less light on the situation.
 
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
    
    func drawOurSnowMan() {
        // Draw our snowman base
        setColor(#colorLiteral(red: 0.2549019607843137, green: 0.27450980392156865, blue: 0.30196078431372547, alpha: 1.0))
        setPenSize(2)
        penDown()
        left(30)
        // Bottom ball
        for i in 1 ... 36 {
            forward(15)
            right(10)
        }
        // The middle ball
        for i in 1 ... 36 {
            forward(10)
            left(10)
        }
        // Get back to the top of the middle ball
        penUp()
        for i in 1 ... 18 {
            forward(10)
            left(10)
        }

        penDown()
        // Draw the head
        for i in 1 ... 36 {
            forward(7)
            right(10)
        }

        penUp()
            // Draw a hat
        for i in 1 ... 18 {
            forward(7)
            right(10)
        }
        penDown()

        setPenSize(7)
        forward(40)
        right(180)
        forward(80)
        left(180)
        forward(20)
        left(90)
        forward(60)
        right(90)
        forward(40)
        right(90)
        forward(60)

        penUp()

        // Draw the eyes
        forward(30)
        setPenSize(9)
        penDown()

        right(90)
        forward(2)
        left(90)
        forward(1)
        right(90)
        penUp()

        forward(30)

        penDown()
        forward(1)
        right(90)
        forward(2)
        penUp()

            // Draw the nose
        right(180)
        forward(10)
        left(90)
        forward(9)
        right(25)
        setColor(#colorLiteral(red: 0.9372549019607843, green: 0.34901960784313724, blue: 0.19215686274509805, alpha: 1.0))
        setPenSize(6)
        penDown()

        forward(25)
        right(155)
        forward(22)

        penUp()

    }
    
    // Admire our work
    penUp()
    home()
}
//#-code-completion(everything, hide)
//#-code-completion(identifier, show, drawOurBareTree(), drawOurTree(), forward(_:), right(_:), drawThinLine(), backward(_:), left(_:), setColor(_:), setBackgroundColor(_:), penUp(), penDown(), home(), setPenSize(_:), setSpeed(_:), hideDegreesHelper(), showDegreesHelper(), for, randomColor(), Speed.fast, Speed.slow, Speed.superFast, randomColor(), .slow, .normal, .brisk, .fast, .superFast)
//#-code-completion(literal, show, color)
//#-code-completion(keyword, show, for)
//#-end-hidden-code

//#-editable-code

// You can use drawOurTree() or drawOurBareTree() or even drawOurSnowMan() here

setBackgroundColor(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1))

setColor(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1))
setPenSize(5)
// Draw a couple miniscule stars
penDown()
forward(1)
penUp()
left(35)
backward(100)
setPenSize(8)
penDown()
penUp()
right(70)
forward(250)

setPenSize(1)
// Can you draw a better-looking star? Or is it snowing in our nighttime scene?




//#-end-editable-code

//#-hidden-code
vc.addTurtle(turtle)
vc.hideDegreesHelper()
PlaygroundPage.current.liveView = vc
//#-end-hidden-code
