//
//  swift_appTests.swift
//  swift-appTests
//
//  Created by Alex Cristea on 21/07/14.
//  Copyright (c) 2014 iOS NSAgora. All rights reserved.
//

import UIKit
import XCTest

class FibonacciTests: XCTestCase {
    
    func testFibonacciAlgorithm() {
        
        var x:Double = Random.nextDouble()
        var y:Double = Random.nextDoubleBetween(minValue: 10.98888, maxValue:  10.98887);
        
        XCTAssertEqual(Algorithm.fibonacci(0), 1, "Fibonacci(0) should be 1")
        XCTAssertEqual(Algorithm.fibonacci(1), 1, "Fibonacci(1) should be 1")
        XCTAssertEqual(Algorithm.fibonacci(2), 2, "Fibonacci(2) should be 2")
        XCTAssertEqual(Algorithm.fibonacci(3), 3, "Fibonacci(3) should be 3")
        XCTAssertEqual(Algorithm.fibonacci(4), 5, "Fibonacci(4) should be 5")
        XCTAssertEqual(Algorithm.fibonacci(5), 8, "Fibonacci(5) should be 8")
    }
    
    func testFibonacciOf10PerformanceFor() {
        self.measureBlock() {
            let val = Algorithm.fibonacci(10);
        }
    }
    
    func testFibonacciOf20PerformanceFor() {
        self.measureBlock() {
            let val = Algorithm.fibonacci(20);
        }
    }
    
    func testFibonacciOf25PerformanceFor() {
        self.measureBlock() {
            let val = Algorithm.fibonacci(25);
        }
    }
    
    func testFibonacciOf30PerformanceFor() {
        self.measureBlock() {
            let val = Algorithm.fibonacci(30);
        }
    }
    
    func testFibonacciOf35PerformanceFor() {
        self.measureBlock() {
            let val = Algorithm.fibonacci(35);
        }
    }
    
    func testFibonacciOf40PerformanceFor() {
        self.measureBlock() {
            let val = Algorithm.fibonacci(40);
        }
    }

    func testFibonacciOf45PerformanceFor() {
        self.measureBlock() {
            let val = Algorithm.fibonacci(45);
        }
    }
    
    func testFibonacciOf50PerformanceFor() {
        self.measureBlock() {
            let val = Algorithm.fibonacci(50);
        }
    }
}
