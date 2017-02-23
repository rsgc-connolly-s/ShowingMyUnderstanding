/*:
 [Previous](@previous) / [Next](@next)

 # Sequence - Practice
 
 When does sequence matter?

 Here is an example of an image that is created and depends on statements being run in a certain order:

 ![overlapping_shapes](overlapping_shapes.png "Overlapping Shapes Logo")

 In this shape, there are lines and circles used.

 Color and alpha (transparency) matter.

 Try reproducing this image for practice.

 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note

 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

//Create Blue Part
canvas.drawShapesWithBorders = false
canvas.lineColor = Color(hue: 205, saturation: 64, brightness: 75, alpha: 100)
canvas.drawLine(fromX: 75, fromY: 75, toX: 75, toY: 225, lineWidth: 75)


//Draw Pink Part
canvas.drawShapesWithBorders = false

canvas.lineColor = Color(hue: 365, saturation: 64, brightness: 75, alpha: 100)
canvas.drawLine(fromX: 225, fromY: 75, toX: 225, toY: 225, lineWidth: 75)


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
