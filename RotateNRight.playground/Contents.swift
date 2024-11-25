import Foundation

// Shift array elements to the N times right.

let input  = [3,9,2,1,7,8]  // N: 3 => O/P: [1,7,8,3,9,2]

func shiftArrayElements(_ n: Int, array: [Int]) -> [Int] {
    guard n > 0, !array.isEmpty else {
        return array
    }
    
    print("Inside Array Shift Function")
    var result = array
  
    for _ in 1...n {
        result =  shiftRight(array: result)
    }
    
    print(result)
    return result
}

func shiftRight(array: [Int]) -> [Int] {
    var newArray = Array(repeating: 0, count: array.count)
    
    for i in 0..<array.count-1 {
        newArray[i+1] = array[i]
    }
    
    newArray[0] = array.last!
    
    return newArray
    
}

shiftArrayElements(3, array: input)

import XCTest

final public class SwiftDataStructuresTests:XCTestCase {
   func testVerifyShiftArrayElements(){
       let value = [10,20,30,40,50]
       let n = 2
       
       let expected = [40,50,10,20,30]
       
       XCTAssertEqual(shiftArrayElements(n, array: value), expected)
    }
    
    func testVerifyShiftArrayElementsWhenNIs0(){
        let value = [10,20,30,40,50]
        let n = 0
        
        let expected = value
        
        XCTAssertEqual(shiftArrayElements(n, array: value), expected)
     }
}


SwiftDataStructuresTests.defaultTestSuite.run()
