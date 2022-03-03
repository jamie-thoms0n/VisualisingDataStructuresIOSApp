//
//  VisualisingDataStructuresIOSAppTests.swift
//  VisualisingDataStructuresIOSAppTests
//
//  Created by Thomson, Jamie (NA) on 03/03/2022.
//

import XCTest
@testable import VisualisingDataStructuresIOSApp

class VisualisingDataStructuresIOSAppTests: XCTestCase {
    
    func testStackPushFunction(){
        let stack = Stack()
        let testItems = [(item : [1,2,3,4,5], pointer = 0, input = 9), (item : [7,5,23,5,77,52,1], pointer = 0, input = 7)]
        
        //act
        for testItem in testItems {
            let actual = stack.push(items : testItem.item, testItem.pointer = 0, testItem.input = 9)
            //assert
            XCTAssertEqual(actual, testCase.expected)
    }

}
