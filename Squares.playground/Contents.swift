import Foundation

//class Square {
//    var topLeftCorner: (Double, Double)
//    var lengthOfSide: Double
////    var area: Double ->  but user can put in an arbitrary number for area
//    var area: Double {
//       return lengthOfSide * lengthOfSide
//    }
//
//    init(topLeftCorner: (Double, Double), lengthOfSide: Double) {
//        self.topLeftCorner = topLeftCorner
//        self.lengthOfSide = lengthOfSide
//        
////      self.area = area  -> no need and doesn't make sense
////        self.area = lengthOfSide * lengthOfSide --> can be done, but shorthand above ^
//    }
//}

let square1 = Square(topLeftCorner: (0.0, 0.0), lengthOfSide: 10.0)
let square2 = Square(topLeftCorner: (5.5, 7.25), lengthOfSide: 9.5)
let square3 = Square(topLeftCorner: (14.5, 2.3), lengthOfSide: 7.8)
let square4 = Square(topLeftCorner: (23.4, 2.0), lengthOfSide: 12.1)

square1.lengthOfSide
square2.topLeftCorner

square1.area
square2.area

//var square5 = Square(topLeftCorner: (8.0, 7.0), lengthOfSide: 15.0)
//print("Area is \(square5.area)")
//square5.lengthOfSide = 9.7
//print("Area is \(square5.area)")


// Mutability
// square1 = Square(topLeftCorner: (10.0, 10.0), lengthOfSide: 10.0)
//square5 = Square(topLeftCorner: (7.0, 7.5), lengthOfSide: (12.0))
//print(square5.area)


class Square {
    var topLeftCorner: (Double, Double)
    var lengthOfSide: Double
    var area: Double {
        get {
            return lengthOfSide * lengthOfSide
        }
        set {
            lengthOfSide = sqrt(newValue)
        }
    }

    init(topLeftCorner: (Double, Double), lengthOfSide: Double) {
        self.topLeftCorner = topLeftCorner
        self.lengthOfSide = lengthOfSide
    }
}

var square5 = Square(topLeftCorner: (10.0, 10.0), lengthOfSide: 10.0)
print("Area is 100.0? \(square5.area)")
square5.area = 144.0
print("Length of side is 12.0? \(square5.lengthOfSide)")
