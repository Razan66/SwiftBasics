import Foundation



// Classes are fast
// Classes are stored in the Heap ( memory )
// Objects in the Heap are Reference types
// Reference types  point to an object in memory and update the object in memory
// Classes dont have mutations


// This class going to have all the data needed for some screen
class ScreenViewModel {
    let title: String
    private(set) var showButton: Bool
    
    
    // Same init as a Struct, expect have implicit init
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }
    
    deinit {
        // deinit it is the opposit of init
        // runs as the object is benig removed from memory
        // Struct do NOT have deinit
    }

    func hideButton() {
        showButton = false
    }
    
    func updateShowButton(newValue: Bool) {
        showButton = newValue
    }
}

// Notice that we are using a "let", because:
// the object itself is not changing
// the data inside the object is changing
let viewModel: ScreenViewModel = ScreenViewModel(title: "Screen1", showButton: true)
//viewModel.showButton = false

let vlue = viewModel.showButton


viewModel.hideButton()
viewModel.updateShowButton(newValue: false)
