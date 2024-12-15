import Foundation


func myFirstFunction() {
   print("My first function Called")
    mySecondFunction()
    myThirdFunction()
}


func mySecondFunction() {
   print("My second function Called")
}

func myThirdFunction() {
    print("My third function Called")
}

myFirstFunction()






func getUserName() -> String {
    let username: String = "Razan" // This is a private for the pracket
    return username
}


func checkIfUserIsPremium() -> Bool {
    return false
}

let name: String =  getUserName()





// -----------------------------------------------------


showFirstScreen()

func showFirstScreen() {
    var userDidCompleteOnboarding: Bool = false
    var userProfileIsCreated: Bool = true
    let status = checkUserStatus(didCompleteOnboarding: userDidCompleteOnboarding, profileIsCreated: userProfileIsCreated)
    
    if status == true {
        print("Show Home Screen")
    } else {
        print("Show Onboarding Screen")
    }
}


func checkUserStatus(didCompleteOnboarding: Bool, profileIsCreated: Bool) -> Bool {
    if didCompleteOnboarding && profileIsCreated  {
        return true
    } else {
        return false
    }
}

func doSomthingElse(someValue: Bool ) {
    
}




// -----------------------------------------------------

func doSomething() -> String {
    var title: String = "Avengers"
    
    // If title is equal to Avengers
    if title == "Avengers" {
        return "Marvel"
    } else {
        return "Not Marvel"
    }
    
}

doSomwthingElse()
func doSomwthingElse() {
    var title: String = "Avengers"
    
    //"Make sure title == Avengers
    
    guard title == "Avengers" else {
        print("Not Marvel")
        return
    }
    print("Marvel")
}



checkIfTitleIsAvengers()
func checkIfTitleIsAvengers() -> Bool{
    var title: String = "Avengers"
    
    //"Make sure title == Avengers
    
    guard title == "Avengers" else {
        return false
    }
    return true
}


checkIfTitleIsAvengers()
func checkIfTitleIsAvengers2() -> Bool{
    var title: String = "Avengers"
    
    if title == "Avengers" {
        return true
    } else {
        return false
    }
}



// Clculated variables are basically functions
// Generally good for when you dont need to pass data into the function

let number1 = 5
let number2 = 8

func calculateNumbers() -> Int {
    return number1 + number2
}

func calculateNumbers(value1: Int, value2: Int) -> Int {
    return value1 + value2
}

let result1 = calculateNumbers()
let result2 = calculateNumbers(value1: number1, value2: number2)

var calculatedNumber: Int {
    return number1 + number2
}
