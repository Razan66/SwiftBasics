import Foundation

// Structs are fast
// Structs are stored in the Stack ( memory )
// Objects in the Stack are Value types
// Value types are copied & mutated


struct Quiz {
    let title: String
    let dateCreated: Date
    let isPremium: Bool?
  
//    // This is the same as, let myQuiz: Quiz = Quiz(title: "Quiz1", dateCreated: .now)
    
//    // Struct have an implicit init
//    init (title: String, dateCreated: Date) {
//        self.title = title
//        self.dateCreated = dateCreated
//    }
    
    // We give it a default value .now
    
//    init (title: String, dateCreated: Date = .now) {
//        self.title = title
//        self.dateCreated = dateCreated
//    }
    
    init (title: String, dateCreated: Date?, isPremium: Bool?) {
        self.title = title
        self.dateCreated = dateCreated ?? .now
        self.isPremium = isPremium
    }

}

let myObject: String = "Hello World"

// this is better
//let myQuiz: Quiz = Quiz(title: "Quiz1", dateCreated: .now)
//let myQuiz: Quiz = Quiz(title: "Quiz1")
//let myQuize = Quiz(title: "Quize1", isPremium: nil)

let myQuiz: Quiz = Quiz(title: "Quiz1", dateCreated: nil, isPremium: false)

print(myQuiz.title)




// -----------------------------------------------------------------------------


// " Immutable struct " all "let" constants = NOT mutable = " Cannot mutate it "
struct UserModel {
     let name: String
    let isPremium: Bool
}


var user1: UserModel = UserModel(name: "Razan", isPremium: false)


@MainActor func markUserAsPremium() {
    print(user1)
    
    user1 = UserModel(name: user1.name, isPremium: true)
    print(user1)
    
}

//markUserAsPremium()


// -----------------------------------------------------------------------------


struct userModel2 {
    let name: String
    var isPremium: Bool
}


var user2 = userModel2(name: "Razan", isPremium: false)

@MainActor func markUserIsPremium2() {
    print(user2)
    
    // "Mutate" the struct
    user2.isPremium = true
    
    print(user2)
}

markUserIsPremium2()


// -----------------------------------------------------------------------------

// "immutate the struct"
struct UserModel3 {
    let name: String
    let isPremium: Bool
    
    var user2 = userModel2(name: "Razan", isPremium: false)

    @MainActor func markUserIsPremium(newValue: Bool) -> UserModel3 {
         UserModel3(name: name, isPremium: newValue)
    }

}


var user3: UserModel3 = UserModel3(name: "Razan", isPremium: true)
user3 = user3.markUserIsPremium(newValue: true)


// -----------------------------------------------------------------------------

// "Mutable the struct"
struct UserModel4 {
    let name: String
    var isPremium: Bool
    
    mutating func markUserAsPremium() {
        isPremium = true
    }
    
    mutating func updateIsPremium(newValue: Bool) {
        isPremium = newValue
    }
}


var user4 =  UserModel4(name: "Razan", isPremium: false)
user4.markUserAsPremium()
user4.updateIsPremium(newValue: true)



struct User5 {
    let name: String
    let isPremium: Bool
    let isNew: Bool
    // etc
    //
    //
    //
}


