import Foundation




struct EmploeeModel EmployeeHasAName {
    let title: String
    let name: String
}

// Protocol is just a list of rules or requirements that an object has to follow

// Every view in swiftUI is a struct that conforms to the view protocol, and to conform to the view protocol, that means the struct has a var called body that is type some View


/*
 
 Ex:
 
 import SwiftUI
 
 
 struct ContentView: View {

 var body: some view {
   Text("Hello, world")
 
    }
 }

 */

protocol EmployeeHasAName {
    let name: String
}
