import Foundation

// Constant ( Can't cahnge the value )
let someConstent: Bool = true


// Variable ( can change the value )
var someVariable: Bool = true

// someConstent = false  ( Error: Cannot assign to value: 'someConstent' is a 'let' constant )
someVariable = false


// It is never goning to be anything other than Double, becuse i declare it in the first as a Double ( We can change the value what is equal to, but we cant change the type )
var myNumber: Double = 1.1234
print(myNumber)
myNumber = 2
print(myNumber)
myNumber = 25525626
print(myNumber)
myNumber = 1
print(myNumber)
//myNumber = "99 Hi"  ( Error: Cannot assign value of type 'String' to type 'Double')



// if statment
// else means if all other cases that is not true, print else
var userIsPremium: Bool = false
// The double equal == sign means is equal to..
if userIsPremium == true {
    print("1 - user is premium ")
} else {
    print("1.1 - user is NOT premium")
}

// To make it shorter

if userIsPremium {
    print("1 - user is premium ")
}


if userIsPremium == false {
    print("1 - user is NOT premium ")
}

// To make it shorter

if userIsPremium {
    print("1 - user is NOT premium ")
}

// ! means NOT
if !userIsPremium {
    print("1 - user is NOT premium ")
}
