/*:
 [Table of contents](Table%20of%20contents) • [Previous page](@previous) • [Next page](@next)

 # Bool.toggle

 [SE-0199](https://github.com/apple/swift-evolution/blob/master/proposals/0199-bool-toggle.md "Adding toggle to Bool") adds a mutating `toggle` method to `Bool`.

 This is especially useful if you need to toggle a boolean value deep inside a nested data structure because you don’t have to repeat the same expression on both sides of the assignment.
 */
struct Layer {
    var isHidden = false
    var isDarkMode = true
}

struct View {
    var layer = Layer()
}

var view = View()

// Before:
view.layer.isHidden = !view.layer.isHidden
//view.layer.isHidden = !view.layer.isDarkMode // BUG! it should be isHidden
view.layer.isHidden

// Now:
view.layer.isHidden.toggle()
view.layer.isHidden.toggle()

