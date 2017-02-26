/*:
 [Previous](@previous) / [Next](@next)
 
 # Put it all together
 
 Create an example that sequence, conditionals, and iteration to produce a simple image.
 
 The image need not be eye-catching or elaborate – it should simply demonstrate your ability to combine these programming structures.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// Create Background 
for x in stride(from: 1, through: 300, by: 100){
    for y in stride(from: 1, through: 300, by: 100){
        canvas.drawShapesWithBorders = true
        canvas.borderColor = Color.white
        canvas.defaultBorderWidth = 50
        canvas.fillColor = Color.red
        canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 100, height: 100)
    }
}

//Decide Which Drawing to build
let number = random(from: 0, toButNotIncluding: 2)

//Draw Shape 

if number==0
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
