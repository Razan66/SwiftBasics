/*
  let = constant : gets equal to one thing and never change
  Var = variable : can change their value
 
 */

import Foundation

// String is " Regular text ":
let myFirstItem: String = "Hello, World!"

// Reference previously created object:
let myTitle = myFirstItem

// Boolean ( aka Bool ) is true or false:
let mySecondItem: Bool = true
let myThirdItem: Bool = false

// Do not do this:
let myFourthItem: String  = "true"



// Swift is a type-safe language:
// let myFifthItem: Bool = "Hello, World!" this is wrong
let myFifthItem: Bool = true

// let mySixthItem: String = fales  this is wrong
let mySixthItem: String = " Hello, World!"

// It can be defined automatically without using Bool or String befor the =
let mySeventhItem = true
let mmySeventhItem = "Hello, World!"



// Date:
let myFirstDate: Date = Date()
let mmyFirstDate: Date = .now




// Numbers can be Int, Double, CGFloat & more:

// Int is a whole number Integer
let myFirstNumber: Int = 1

// Use Double for math
let mySecondNumber: Double = 1.0

// Use CGFloat for UI such as, size or etc..
let myThirdNumber: CGFloat = 1.0





