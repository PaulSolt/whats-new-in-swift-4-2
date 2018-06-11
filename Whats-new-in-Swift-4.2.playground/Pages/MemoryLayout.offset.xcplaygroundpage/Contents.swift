import Cocoa

struct Point {
    var x: Float
    var y: Float
    var z: Float
    var rect: CGRect
}

MemoryLayout<Point>.size

MemoryLayout<Float>.size
MemoryLayout<Double>.size
MemoryLayout<CGRect>.size

MemoryLayout<Point>.offset(of: \Point.x)
MemoryLayout<Point>.offset(of: \Point.y)
MemoryLayout<Point>.offset(of: \Point.z)
MemoryLayout<Point>.offset(of: \Point.rect)

/*:
 [Table of contents](Table%20of%20contents) • [Previous page](@previous) • [Next page](@next)
 */
