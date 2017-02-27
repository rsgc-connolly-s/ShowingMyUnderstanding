/*:
 [Previous](@previous) / [Next](@next)
 
 # Sequence - Create an Example
 
 Create an example where overlapping shapes combine to create an image.
 
 You can find a simple image on the Internet and attempt to reproduce it.
 
 Or, you can create your own.

 ## Remember
 
 Commit your work as you make progress on this page.

 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

//Draw Pizza Base
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = true
canvas.defaultBorderWidth = 25

canvas.borderColor = Color(hue: 39, saturation: 100, brightness: 100, alpha: 100)
canvas.fillColor = Color(hue: 53, saturation: 100, brightness: 100, alpha: 100)

canvas.drawEllipse(centreX: 150, centreY: 150, width: 250, height: 250)


//Draw Pepperoni
canvas.drawShapesWithBorders = false

//(Using Variables)(Assignment Statements) 
for y in stride(from: 50, through: 250, by: 25){
var RX = random(from: 50, toButNotIncluding: 175)
canvas.fillColor = Color(hue: 25, saturation: 100, brightness: 100, alpha: 100)
canvas.drawEllipse(centreX: RX, centreY: y, width: 25, height: 25)
}








/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
