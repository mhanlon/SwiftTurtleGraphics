//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  Provides supporting functions for setting up a live view.
//

import UIKit
import PlaygroundSupport

/// Instantiates a new instance of a live view.
///
/// By default, this loads an instance of `LiveViewController` from `LiveView.storyboard`.
public func instantiateLiveView() -> PlaygroundLiveViewable {
    let storyboard = UIStoryboard(name: "LiveView", bundle: nil)

    guard let viewController = storyboard.instantiateInitialViewController() else {
        fatalError("LiveView.storyboard does not have an initial scene; please set one or update this function")
    }

    guard let liveViewController = viewController as? LiveViewController else {
        fatalError("LiveView.storyboard's initial scene is not a LiveViewController; please either update the storyboard or this function")
    }

    return liveViewController
}

public let turtle = Turtle(name: "Waffles", avatar: "🐒")
public func forward(_ distance:Int) {
    turtle.forward(distance: Float(distance))
}

public func backward(_ distance:Int) {
    turtle.backward(distance: Float(distance))
}

public func right(_ degrees:Int) {
    turtle.right(turnDegrees: Float(degrees))
}

public func left(_ degrees:Int) {
    turtle.left(turnDegrees: Float(degrees))
}

public func west() {
    turtle.west()
}

public func east() {
    turtle.east()
}

public func north() {
    turtle.north()
}

public func south() {
    turtle.south()
}

public func setColor(_ color:UIColor) {
    turtle.setColor(color)
}

public func penUp() {
    turtle.penUp()
}

public func penDown() {
    turtle.penDown()
}
public func home() {
    turtle.home()
}

public func setPenSize(_ penSize: Int) {
    turtle.setPenSize(Float(penSize))
}

public func setTurtleShape(_ shape: String) {
    turtle.setAvatar(shape)
}
