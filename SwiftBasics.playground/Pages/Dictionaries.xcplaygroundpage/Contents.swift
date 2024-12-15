import Foundation

// Array: if we want to keep data in specific order such as list resturant, however, Dictionaries: you can very very fast access to the data
// Array have indexies, Dictionaries have Keys

// Array
var finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"]
print(finalFruits)

let myFruit = finalFruits [1]

// Set
var fruitsSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]
print(fruitsSet)

// ------------------------------------------

// Dictionaries have key and not indexes
// Dictionaries are closer to Sets
// Dictionaries can have duplicate of the same value,  but not duplicate of the same key
// Dictionaries are not orderd
// Dictionaries dont crash the app if you put Value not exisit in the Key
// In general we never make numbers in the key in Dictionaries, it is almost always a String
// Dictionaries cannot have of the same key (you need to tell it where you want using .append), it can have of the same Value




// Key is the String , Value is the Bool
var myFirstDictionary: [String:Bool] = ["Apple":true, "Orange":false]

let item = myFirstDictionary ["Banana"]





// Key is the Int , Value is the String
var anotherDictionary: [Int:String] = [0 : "Apple", 176 : "Banana"]


let item2 = anotherDictionary [86]






var anotherDictionary3: [String : String] = ["abc" : "Apple", "def" : "Banana", "xyz" : "Apple"]


let item3 = anotherDictionary3 ["abc"]

// Add to the Dictionary
anotherDictionary3 ["xyz"] =  "Mango"

// Remove item
anotherDictionary3.removeValue(forKey: "def")
print(anotherDictionary3)





struct PostModel {
    let id: String
    let title: String
    let likeCount: Int
}


var postArray: [PostModel] = [
   PostModel(id: "abc123", title: "Post 1", likeCount: 5),
   PostModel(id: "def678", title: "Post 2", likeCount: 7),
   PostModel(id: "xyz987", title: "Post 3", likeCount: 217),

]

if postArray.indices.contains(1) {
    let item = postArray[1]
    print(item)
}


var postDict: [String:PostModel] = [
    "abc123" : PostModel(id: "abc123", title: "Post 1", likeCount: 5),
    
    "def678" : PostModel(id: "def678", title: "Post 2", likeCount: 7),
    
    "xyz987" : PostModel(id: "xyz987", title: "Post 3", likeCount: 217),


]


let myNewItem = postDict["def678"]
print(myNewItem)
