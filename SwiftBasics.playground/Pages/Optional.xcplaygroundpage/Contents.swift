import Foundation

// ? means optional ( nil or no value )


// " There is always a value and it is a boolean "
let myBool: Bool = false


// " We dont know if there is a value, but if there is, it is a boolean "
var myOtherBool: Bool? = false

//print(myOtherBool)
//myOtherBool = true
//print(myOtherBool)
//myOtherBool = false
//print(myOtherBool)
//myOtherBool = nil
//print(myOtherBool)

// ?? means nill coalescing operator

let newValue: Bool? = myOtherBool

// " The value of myOtherBool (if there is one), otherwise false "
let newValue2: Bool = myOtherBool ?? false

print("New Value 2: \(newValue2.description)")


var myString: String? = "Hello World"
print(myString ?? "There is no value")

myString = nil
print(myString ?? "There is no value")


let newString = myString ?? " Some Default Value"



// -------------------------------------------------


var userIsPremium: Bool? = nil

@MainActor func checkIfUserIsPremuim() -> Bool? {
    return userIsPremium
}

@MainActor func checkIfUserIsPremuim2() -> Bool {
    return userIsPremium ?? false
}

let isPremium = checkIfUserIsPremuim2()





// If-let
// When if-let successful, enter the closure

@MainActor func checkIfUserIsPremuim3() -> Bool {
    
    // If there is a value, let newValue equal that value
    if let newValue = userIsPremium {
        // Here we have access to the non-optional value
        return newValue
    } else {
        return false
    }
    
    
}

@MainActor func checkIfUserIsPremuim4() -> Bool {
    
    if let newValue = userIsPremium {
        return newValue
    } else {
        return false
    }
    
    
}



@MainActor func checkIfUserIsPremuim5() -> Bool {
    
    if let userIsPremium {
        return userIsPremium
    }
        return false
    
}




// Gaurd
// When a gaurd is a failure, enter the closure

@MainActor func checkIfUserIsPremuim6() -> Bool {
    
    // Make sure there is a value
    // If there is, let newValue equal that value
    // Else (otherwise) return out of the function
    guard let newValue = userIsPremium else {
        return false
    }
    
    // We have access to the non-otional value
    return newValue
}




@MainActor func checkIfUserIsPremuim7() -> Bool {
    guard let userIsPremium else{
        return false
    }
    
    return userIsPremium
    
}



// -------------------------------------------------



var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = false
var userFavoriteMovie: String? = nil


@MainActor func checkIfUserIsSetUp() -> Bool {
    
    if let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie {
        // userIsNew == Bool AND
        // userDidCompleteOnboarding == Bool AND
        // userFavoriteMovie == String
        
        return getUserStatus(userIsNew: userIsNew, userDidCompleteOnboarding: userDidCompleteOnboarding, userFavoriteMovie: userFavoriteMovie)
    } else {
        // userIsNew == nil OR
        // userDidCompleteOnboarding == nil OR
        // userFavoriteMovie == nil
        return false
    }
}



 func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavoriteMovie: String) -> Bool {
    if userIsNew && userDidCompleteOnboarding {
        return true
    }
    
    return false
}




@MainActor func checkIfUserIsSetUp3() -> Bool {
    
    
    if let  userIsNew {
        // userIsNew == Bool
        
        if let userDidCompleteOnboarding {
            // userDidCompleteOnboarding == Bool
            
            if let userFavoriteMovie{
                // userFavoriteMovie == String
                
                return getUserStatus(userIsNew: userIsNew, userDidCompleteOnboarding: userDidCompleteOnboarding, userFavoriteMovie: userFavoriteMovie)
                
            } else {
                
                // userFavoriteMovie == nil
                return false
            }
            
        } else {
            // userDidCompleteOnboarding == nil
            return false
        }
    } else {
        // userIsNew == nil
        return false
    }
    
}




// layered guard (This is better and simple)

    
@MainActor func checkIfUserIsSetUp4() -> Bool {
    
    guard let userIsNew else {
        // userIsNew == nil
        return false
    }
    // userIsNew == Bool
    
    
    guard let userDidCompleteOnboarding else {
        // userDidCompleteOnboarding == nil
        return false
    }
    // userDidCompleteOnboarding == Bool
    
    
    guard let userFavoriteMovie else {
        return false
        // userFavoriteMovie == nil
    }
    // userFavoriteMovie == String
    
    return getUserStatus(userIsNew: userIsNew, userDidCompleteOnboarding: userDidCompleteOnboarding, userFavoriteMovie: userFavoriteMovie)
}



// Optional chaining

func getUserName() -> String? {
    return "test"
    
}

func getTitle () -> String {
    return "title"
}

func getUserData() {
     
    let username: String? = getUserName()
    
    // I will get the count if the user name is not nil
    if let count = username?.count {
        
    }
    
    let title: String = getTitle()
    
    // I will get the count always
    let count2 = title.count
    
    
    
    // If username has a value, and first charecter in username has a value, then return the value of lowercase
    // Optional chaining
    let firstCharecterIsLowerCased = username?.first?.isLowercase
    
    
    // If will get the count because i know 100% that username is not nil
    // This will crash your app if username is nil
    // This is wrong way using !
    let count3: Int = username!.count
}


/*
 
- Safely unwrap an optional
- nil coalscing
- if-let
- guard
- explicitly unwrap optional
- !
 
 */
    




