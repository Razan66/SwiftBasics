import Foundation




/*
 
" Opject Oriented Programming "
 
 
 // During the life if your app, we creat and destroy opjects
 // Create = Initialize ( init ) = ( add to memory )
 // Destroy = Deinitialize ( deinit ) = Deallocate ( remove from memory )
 
 
 // Automatic Reference Counting ( ARC )
 
 // A live count of the number of object in memory
 // Creat 1 object, count goes up by 1
 // Creat 2 object, count goes up by 2
 // Destroy 1 object, count goes down by 1
 // We need to keep it low as much as we can
 
 
 // The more opgects in memory, the slower the app performs
 // We want tp keep the ARC count as slow as possiple
 // We want to creat opjects only when you need them
 // And destroy them as soon as we no longer need them
 
 // For example: if an app has 2 screens and user is moving from 1 screen to screen 2. We only want to allocate screen 2 WHEN we need it (ie, when the user clicks button to segue to screen 2 ). When we get to screen 2, we MAY want to deallocate screen 1.
 // Means: When the app load, we only need to load screen 1, and when the user click a button, we ant allocate and creat memory for screen 2 when we need it.
 
 // There are 2 types of memory:
 // Stack & Heap
 // Only object in the Heap are counted towards ARC
 // Advanced info here: https://youtu.be/-JLenSTKEcA?si=gEpniS2l1qtmNNi3
 
 
 // Opject in the Stack:
 // String, Bool Int, most basic types
 // New: Struct, Enum, Array 
 
 // Opject in the Heap
 // Functions
 // New: Class, Actors
 
 
 // iPhone is a " Multi-threaded enviroment "
 // There are multi "threads" or " engines " running simultaneously
 // Each thread has own Stack
 // But there is only 1 Heap for all threads
 
 // Therefore:
 // Stack is faster, lower memory footprint, preferable
 // Heap is slower, higher memory footprint, risk of threading issues
 // Every singl veiw in swift UI and screens is a Struct, and that is because Struct is faster.
 
 
 // Value vs Reference types
 
 // Object in the Stack are " Value " types
 // When you edit a Value type, you create a copy of it with new data
 
 // Object in the Heap are " Reference " types
 // When you edit a Refernce type, you edit the object that you are referencing. This is called " pointer " because it " points " to an object in the Heap ( In memory )
 
 
 */


// If the objects we will create, it will be a structs or classes

// struct are Value types
struct MyFirstObject {
    let title: String = "Hello, World!"
}

// class are Reference types
class MySecondObject {
    let title: String = "Hello, World!"
}



// Class vs Struct explained to a 5-year old

// Imagine a school and in the school there are classrooms.
// Within each class, there are quizzes.
// During the day, the teacher will hand out many different quizzes to different classes. The students will answer the quizzes and return them back to the teacher.

// " School " = App
// " Calssroom " = Class
// " Quiz " = Struct


// In this example, we have a classroom and there are many actions that occur inside the classroom.
// In code, we creata class and can perform actions within the class.

// In this example, there are many different types of quizzes. The teacher hand out the quizzes and the students take the quizzes and return them to the teacher.
// In code, we creat many structs and pass them around out app with ease.


// Note:
// This metaphor is not perfect
// Technical a " quize " can be a class, etc.


// We wnat to use a class for things like:
// "Manager" "DataService" "Service" "Factory" "ViewModel"
// Object that we create and want to perform actions inside.

// We want to use a struct for things like:
// Data models
// Objects that we create and pass around our app.


