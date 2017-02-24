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
var x = random(from: 90, toButNotIncluding: canvas.width - 50)
canvas.drawShapesWithBorders = false

canvas.fillColor = Color(hue: 25, saturation: 100, brightness: 100, alpha: 100)
canvas.drawEllipse(centreX: x, centreY: x, width: 25, height: 25)

var y = random(from: 100, toButNotIncluding: canvas.width - 50)
canvas.drawShapesWithBorders = false

canvas.fillColor = Color(hue: 25, saturation: 100, brightness: 100, alpha: 100)
canvas.drawEllipse(centreX: y, centreY: y, width: 25, height: 25)

var z = random(from: 100, toButNotIncluding: canvas.width - 50)
canvas.drawShapesWithBorders = false

canvas.fillColor = Color(hue: 25, saturation: 100, brightness: 100, alpha: 100)
canvas.drawEllipse(centreX: z, centreY: z, width: 25, height: 25)





/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
