import Foundation

//var likeCount: Double = 5
//var CommentCount: Double = 0
//var viewCount: Double = 100

// Here we add 1 on the 5 so it will be 6
// likeCount = 5 + 1
//
// // Additon
// likeCount = likeCount + 1
// likeCount += 1
//
// // Subtraction
// likeCount = likeCount - 1
// likeCount -= 1
//
//
// // Multiplication
// likeCount = likeCount * 2
// likeCount *= 2
//
//// Division
// likeCount = likeCount / 2
// likeCount /= 2
//
// // * Order of operation does matter
// // PEMDAS
//
//// ننقص العدد من عمليةالضرب الي صارت من اخر نتيجة الي هي 6
//// يعني 1 في 2 يساوي 2 بعدين ناقص 6
//// هذي العملية تصير اذا ماستخدمنا اقواس
// likeCount = likeCount - 1 * 2
//
//// هنا استخدمنا اقواس
//// ننقص 1 من 4 بعدين نضرب في 2
// likeCount = (likeCount - 1) * 2


var likeCount: Double = 5
var CommentCount: Double = 0
var viewCount: Double = 100

// Here we add 1 on the 5 so it will be 6
likeCount += 1

if likeCount == 5 {
    print("Post has 5 likes.")
} else {
    print("Post does NOT have 5 likes.")
}

// ! means NOT
if likeCount != 5 {
    print("Post does NOT have 5 likes.")
}

// > means more than / < less than
if likeCount < 5 {
    print("Post has less than 5 likes.")
}

if likeCount >= 5 {
    print("Post has greater than or equal to 5 likes.")
}

// If only of one of these true, then it will not be print the statment
if (likeCount > 3) && (CommentCount > 0) {
    print("Post has greater than 3 likes AND greater than 0 comments.")
} else {
    print("Post has 3 or less likes OR post has 0 or less comments.")
}

// || means or
if (likeCount > 3) || (CommentCount > 0) {
    print("Post has greater than 3 likes OR greater than 0 comments.")
} else {
    print("Post has 3 or less likes OR post has 0 or less comments.")
}


var userIsPremium: Bool = true
var userIsNew: Bool = false

if userIsPremium && userIsNew {
    
}

if (likeCount > 3 ) && (CommentCount > 0) || (viewCount > 50) {
    print("EXECUTE")
}

if (likeCount > 100) && (CommentCount > 0 || viewCount > 50) {
    print("EXECUTE")
}

if likeCount > 5 || userIsPremium {
    
}


if likeCount > 5 {
    print("Like count > 5")
} else if likeCount > 2 {
    print("Like count > 2")
} else if userIsPremium {
    print("User is premium")
} else {
    print("else statment")
}
//
//
//
//
//
//
//
//
