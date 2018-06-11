//: This is a new function that is fast to remove elements, without causing unwanted side-effects or bugs
//: Writing this type of remove function was tedious and error prone in the past
//:
//: [SE-197](https://github.com/apple/swift-evolution/blob/master/proposals/0197-remove-where.md) removeAll(where:)

import Foundation
func isOdd(_ number: Int) -> Bool {
    return number % 2 == 1
}

let isEven = { $0 % 2 == 0 }

var nums = [1, 2, 3, 4, 5, 6]

// Call removeAll() with a function name
nums.removeAll(where: isOdd)

// Call removeAll() with a closure variable
nums = [1, 2, 3, 4, 5, 6]
nums.removeAll(where: isEven)

// Call with a closure argument
nums = [1, 2, 3, 4, 5, 6]
nums.removeAll(where: { $0 % 2 == 1 })

// Call with a trailing closure
nums = [1, 2, 3, 4, 5, 6]
nums.removeAll {
    $0 % 2 == 0
}

/*:
 [Table of contents](Table%20of%20contents) • [Previous page](@previous)
 */
