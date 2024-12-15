import Foundation



// Arrays, Sets


var myTitle: String = "Hello, World!"
var myTitle2: String = "Hello, World!"


// Tuple

func doSomthing(value: (title1: String, title2: String)) {
    
}

doSomthing(value: (myTitle, myTitle2))

// Custom data model
struct TitleModel {
    let title1: String
    let title2: String
}


func doSomething(value: TitleModel) {
    
}



// ----------------------------------------------------------
// Arrays

let apple: String = "Apple"
let orange: String = "Orange"

// Way 1
let fruit1: [String] = ["Apple", "Orange"]
// Way 2 (This is common)
let fruit2: [String] = [apple, orange]
// Way 3
let fruit3: Array<String> = [apple, orange]

let myBool: [Bool] = [true , false, false , true, true]


func doSomething(value: [String]) {
    
}


var fruitsArray: [String] = ["Apple", "Orange"]

// After the dot .first or .last is optional
// There is no .secoend or .third , there is only first ans last
// When i call fruits.count , it will be regular count start from 1 2 3 ....

let count = fruitsArray.count
let firstItem = fruitsArray.first
let lastItem = fruitsArray.last


if let firstItem = fruitsArray.first {
    // first item
}

// Way 1 to add items to Array
//fruitsArray = fruitsArray + ["Banana, Mango"]


// Way 2
//fruitsArray.append("Banana")
//fruitsArray.append("Mango")

// Way3
fruitsArray.append(contentsOf: ["Banana", "Mango"])
print(fruitsArray)



// Count = 1, 2, 3, 4,
// Indexes = 0, 1, 2, 3

// This is wrong, because maybe the user put number 4 and there is no 4 in the index, so it will crash the app:
//fruitsArray[0]

// To make it safe:
if fruitsArray.indices.contains(4) {
    let item = fruitsArray[4]
}

let firstIndex = fruitsArray.indices.first
let lastIndex = fruitsArray.indices.last



// To add item between somthing:


//fruitsArray.insert("Kiwi", at: 2)

fruitsArray.insert(contentsOf: ["kiwi", "Berrey"], at: 2)

// This is wrong, If we are accessing to an item at index, we need to make sure that item does exist, or will crash the app :
fruitsArray.remove(at: 3)

// To make it safe:
if fruitsArray.indices.contains(3) {
    fruitsArray.remove(at: 3)
}


fruitsArray.removeAll()

print(fruitsArray)



// We can create our own type of Array

struct ProductModel {
    let title: String
    let price: Int
}

var myProducts = [
    
    ProductModel(title: "Product1", price: 100),
    ProductModel(title: "Product2", price: 200),
    ProductModel(title: "Product3", price: 300),
    ProductModel(title: "Product4", price: 400),
    ProductModel(title: "Product5", price: 500),
    ProductModel(title: "Product6", price: 500),
    ProductModel(title: "Product7", price: 500),
]



// Difference between Set and Array:

// Array:

// We can duplicate of the same exact item in Array
// Array has indexes and the itmes are always listed in the exact same order
var finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"]
print(finalFruits)


// Set:

// Sets are unique values, you cannot have 2 of the same item
// Sets when printed, it comes in different order "Sets do not have an order"
var fruitsSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]
print(fruitsSet)

// Note: If i know that my app is going to have multiple of the same items, then i need to use Array, but if i want to make these items unique (I want only 1 of each item), i use a Set
// Most of code and applications or dictionaries are Array
// Arrays are powerful
