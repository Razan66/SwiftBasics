import Foundation


// Rule of thumb:
// We want everything to be as private as possible
// This makes code easier to read/debug and is good cooding practice
struct MovieModel {
    let title: String
    let genre: MovieGenere
    private(set) var isFavorite: Bool
    
    
   // This is way
    func updateFavoriteStatus(newValue: Bool) -> MovieModel {
        MovieModel(title: title, genre: genre, isFavorite: newValue)
    }
    
    // And this is other way
    mutating func updateFavoriteStatus2(newValue: Bool) {
        isFavorite = newValue
    }
}

enum MovieGenere {
    case comedy, horror, action
}

// The opposit of puplic is then privet, privet means we cannot GET or SET outside of the class
// Anything that is not marked as private, you can consider it public
class MovieManager {
    
    // public
    public var movie1 = MovieModel(title: "Avatar", genre: .action, isFavorite: false)
    
    // private
    private var movie2 = MovieModel(title: "Step Brothers", genre: .comedy, isFavorite: false)
    
    // read is public, set is private
    private(set) var movie3 = MovieModel(title: "Avengers", genre: .horror, isFavorite: false)
    
    func updateMovie3(isFavorite: Bool) {
        movie3.updateFavoriteStatus2(newValue: isFavorite)
    }

}

let manager = MovieManager()

//let someValue = manager.movie1

let someValue = manager.movie3


// manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: true)
//manager.movie1.updateFavoriteStatus2(newValue: true)
//print(manager.movie1)

manager.updateMovie3(isFavorite: true)
print(manager.movie3)



// Version 1
// We can GET and SET the value nfrom outside the object
// "too public"

let movie1 = manager.movie1
manager.movie1 = movie1.updateFavoriteStatus(newValue: true)


// Version 2
// We cannot GET or SET the value from outside the object
// "Cannot access"

//let movie2 = manager.movie2
//manager.movie2 = movie2.updateFavoriteStatus(newValue: true)



// Version 3
// We can GET the value from outside the object, but we cannot SET the value from outside the object
// " Best practice "

let movie3 = manager.movie3
//manager.movie3 = movie3.updateFavoriteStatus(newValue: true)
manager.updateMovie3(isFavorite: true)


// Not: private & public are by far most common but there are many others
//
// open
// public
// internal
// fileprivate
// private
//
//https://docs.swift.org/swift-book/documentation/the-swift-programming-language/accesscontrol/


