//
//  StackTests.swift
//  swift-app
//
//  Created by Alex Cristea on 26/07/14.
//  Copyright (c) 2014 iOS NSAgora. All rights reserved.
//

import UIKit
import XCTest

class StackTests: XCTestCase {
   
    private var stack:Stack<Double> = Stack()
    
    override func setUp() {
        
        stack.push(0)
        stack.push(1)
        stack.push(1024)
    }
    
    func testCount() {

        XCTAssertEqual(stack.count, 3, "Stack should have 3 elements")
    }
    
    func testPull() {
        let x:Double = stack.pop()!
        
        XCTAssertEqual(x, 1024, "Popped value should be 1024")
        XCTAssertEqual(stack.count, 2, "Stack should have 2 elements after pop")
    }
    
    func testSubscript() {
    
        XCTAssertEqual(stack[0]!, 0, "First element in stack should be 0")
        XCTAssertEqual(stack[1]!, 1, "First element in stack should be 0")
    }
}
