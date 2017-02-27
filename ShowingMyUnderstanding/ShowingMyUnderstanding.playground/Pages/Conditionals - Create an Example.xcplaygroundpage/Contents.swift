/*:
 [Previous](@previous) / [Next](@next)
 
 # Conditionals - Create an Example
 
 Create an example where some aspect of the resulting image depends on using a conditional statement to respond to random number generation.
  
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// Create Leafs Score

//(Assignment Statement)
var Leafs = random(from: 0, toButNotIncluding: 5)

//Creat Habs Score 

//(Assignment Statement)
var Habs = random(from: 0, toButNotIncluding: 5)

//Create Winner

//(Comparison Operator)
if Leafs > Habs {
    print("LEAFS WIN!")
    canvas.drawShapesWithFill = true
    canvas.fillColor = Color.blue
    canvas.drawRectangle(bottomLeftX: 100, bottomLeftY: 100, width: 100, height: 100)
} else {
    print("HABS WIN!")
    canvas.drawShapesWithFill = true
    canvas.fillColor = Color.red
    canvas.drawRectangle(bottomLeftX: 100, bottomLeftY: 100, width: 100, height: 100)
}



/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
