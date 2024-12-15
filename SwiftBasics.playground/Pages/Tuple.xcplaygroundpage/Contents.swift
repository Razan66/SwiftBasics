import Foundation

// Tuples allows us to combine multiple or group multiple pieces of data togther.
// We can have Tuple with 2 pieces of data or 10 or 100 or more.


var userName: String = "Hello"
var userIsPremium: Bool = false
var userIsNew: Bool = true

@MainActor func getUserName() -> String {
   return userName
}

// In swift if you are only returning one thing out of the function, you dont need to write " return " befor.
@MainActor func getUserIsPremium() -> Bool {
    userIsPremium
}

// -> String ( if we return somthing out of this function, we can only return one item, we cant return both of them : getUserName() -> String / getUserIsPremium() -> Bool. So we use Tuple.
// limited to 1 return type


@MainActor func getUserInfo() -> String {

    let name = getUserName()
    let isPremium = getUserIsPremium()
    
     return name
}

// Tuple can combine multiple pices of data
@MainActor func getUserInfo2() -> (String, Bool) {
    
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return (name, isPremium)
}


var userData1: String = userName
var userdata2: (String, Bool, Bool) = (userName, userIsPremium, userIsNew)


let info1 = getUserInfo2()
let name1: String = info1.0


// Other way and it is better
@MainActor func getUserInfo3() -> (name: String, isPremium: Bool) {
    
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return (name, isPremium)
}

let info2 = getUserInfo3()
let name2 = info2.name


@MainActor func getUserInfo4() -> (name: String, isPremium: Bool, isNew: Bool) {
    return (userName, userIsPremium, userIsNew)
   
}

func doSomthingWithTheUserInfo(info: (name: String, isPremium: Bool, isNew: Bool) ) {
    
}

let info = getUserInfo4()
 doSomthingWithTheUserInfo(info: info)



