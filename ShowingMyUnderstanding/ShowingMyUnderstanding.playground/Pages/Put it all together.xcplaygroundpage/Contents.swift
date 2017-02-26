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

//Decide Which Number to build
let number = random(from: 0, toButNotIncluding: 2)

//Draw Number

if number == 0{
    
    //Draw 0
    canvas.defaultBorderWidth = 35
    canvas.drawShapesWithBorders = true
    canvas.borderColor = Color.black
    canvas.drawShapesWithFill = false
    canvas.drawEllipse(centreX: 150, centreY: 150, width: 75, height: 115)
}else{
    
    //draw 1
    canvas.drawShapesWithBorders = false
    canvas.drawShapesWithFill = true
    canvas.fillColor = Color.black
    canvas.defaultLineWidth = 45
    
    //draw middle of one
    canvas.drawRectangle(bottomLeftX: 125, bottomLeftY: 75, width: 50, height: 150)
    
    //draw bottom of one
    canvas.drawRectangle(bottomLeftX: 85, bottomLeftY: 50, width: 125, height: 35)
    
    //draw top of one
    canvas.drawLine(fromX: 135, fromY: 205, toX: 90, toY: 180)
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
