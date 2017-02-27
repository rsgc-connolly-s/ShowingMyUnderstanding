/*:
 [Previous](@previous) / [Next](@next)
 
 # Iteration - Practice
 
 How can loops be used to make a program more effient?
 
 How can loops be used to create an interesting image from repeated patterns?
 
 Here is an example image:
 
 ![tire-tracks](tire-tracks.png "Tire Tracks")
 
 Try creating this image for practice.
 
 You should only require 6 lines of code at most to produce the image.
 
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

// Create Top Tracks

//(Using Variables)
for x in stride(from: 1, through: 275, by: 50){
    for y in stride(from: 250, through: 25, by: -100){
   canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 25, height: 10)
    }
}

// Create Bottom Tracks
//(Using Variable)
for x in stride(from: 25, through: 300, by: 50){
    for y in stride(from: 225, through: 1, by: -100){
        canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 25, height: 10)
    }
}


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
