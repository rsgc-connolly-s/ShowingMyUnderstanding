/*:
 [Previous](@previous) / [Next](@next)
 
 # Iteration - Create an Example
 
 Create an example where some aspect of the resulting image depends on using a iteration (loops) to create an image.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)
canvas.drawShapesWithBorders = false

// Create Red Squares

//(Using Varible)
for x in stride(from: 25, through: 300, by: 100){
    for y in stride(from: 300, through: 50, by: -100){
        canvas.fillColor = Color.red
        canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 50, height: 50)
    }
}

// Create Blue Squares

//(Using Variable)
for x in stride(from: 25, through: 300, by: 50){
    for y in stride(from: 225, through: 125, by: -100){
        canvas.fillColor = Color.blue
        canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 25, height: 10)
    }
}


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
