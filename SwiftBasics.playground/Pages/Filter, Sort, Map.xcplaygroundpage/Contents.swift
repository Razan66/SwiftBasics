import Foundation



struct DatabaseUser {
    let name: String
    let isPremium: Bool
    let order: Int
}


var allUsers: [DatabaseUser] = [
    
    DatabaseUser(name: "Nick", isPremium: false, order: 4),
    DatabaseUser(name: "Emily", isPremium: true, order: 1),
    DatabaseUser(name: "Razan", isPremium: false, order: 3),
    DatabaseUser(name: "Joe", isPremium: true, order: 10000),
    DatabaseUser(name: "Chris", isPremium: false, order: 2),
 
]

// Filter

// This is way
//var allPremiumUsers: [DatabaseUser] = allUsers.filter { user in
//    
//    if user.isPremium {
//        return true
//    }
//    
//    return false
//}




// This is other way
var allPremiumUsers: [DatabaseUser] = allUsers.filter { user in
    user.isPremium
}

// Short way
var allPremiumUsers2: [DatabaseUser] = allUsers.filter({  $0.isPremium  })


// And this is other way
//var allPremiumUsers: [DatabaseUser] = []

//for user in allUsers {
//    if user.isPremium {
//        allPremiumUsers.append(user)
//    }
//    
//}


print(allPremiumUsers)




// -----------------------------------------

// Sort

var orderedUsers: [DatabaseUser] = allUsers.sorted { user1, user2 in
    return user1.order < user2.order
}

// Short way
var orderdUsers2: [DatabaseUser] = allUsers.sorted(by: { $0.order < $1.order })

print(orderedUsers)



// -----------------------------------------


// Map means: Transform somthing from one type to another type (Mapping the data from databaseuser)



var userNames: [String] = allUsers.map {user in
    return user.name
}

// Short way
var userNames2: [String] = allUsers.map({ $0.name })

print(userNames)
