//
//  swift_appTests.swift
//  swift-appTests
//
//  Created by Alex Cristea on 21/07/14.
//  Copyright (c) 2014 iOS NSAgora. All rights reserved.
//

import UIKit
import XCTest

// MARK: Unit tests

class FibonacciTests: XCTestCase {
    
    func testFibonacciAlgorithm() {
        XCTAssertEqual(Algorithm.fibonacci(0), 1, "Fibonacci(0) should be 1")
        XCTAssertEqual(Algorithm.fibonacci(1), 1, "Fibonacci(1) should be 1")
        XCTAssertEqual(Algorithm.fibonacci(2), 2, "Fibonacci(2) should be 2")
        XCTAssertEqual(Algorithm.fibonacci(3), 3, "Fibonacci(3) should be 3")
        XCTAssertEqual(Algorithm.fibonacci(4), 5, "Fibonacci(4) should be 5")
        XCTAssertEqual(Algorithm.fibonacci(5), 8, "Fibonacci(5) should be 8")
    }
}

// MARK: Async tests

extension FibonacciTests {
    func testFibonacciOf20Async () {
        
        let input = 20
        let expectedResult = 10946
        var actualResult = 0;
        
        let expectation = expectationWithDescription("Expectation for async fibonacci calculator")
        Algorithm.fibonacci(input) { fibonacci in
            actualResult = fibonacci;
            expectation.fulfill();
        };
        waitForExpectationsWithTimeout(1, handler: nil);
        
        XCTAssertEqual(actualResult, expectedResult, "The fibonacci for \(input) should be \(expectedResult)");
    }
    
    func testFibonacciOf20AsycSecondMethod () {
        
        let input = 20
        let expectedResult = 10946
        
        let expectation = expectationWithDescription("Expectation for async fibonacci calculator")
        Algorithm.fibonacci(input) { fibonacci in
            XCTAssertEqual(fibonacci, expectedResult, "The fibonacci for \(input) should be \(expectedResult)")
            expectation.fulfill();
        }
        waitForExpectationsWithTimeout(1, handler: nil);
    }
}

// MARK: Performance tests

extension FibonacciTests {
    
    func testFibonacciOf10PerformanceFor() {
        measureBlock() {
            let val = Algorithm.fibonacci(10);
        }
    }
    
    func testFibonacciOf20PerformanceFor() {
        measureBlock() {
            let val = Algorithm.fibonacci(20);
        }
    }
    
    func testFibonacciOf25PerformanceFor() {
        measureBlock() {
            let val = Algorithm.fibonacci(25);
        }
    }
    
    func testFibonacciOf30PerformanceFor() {
        measureBlock() {
            let val = Algorithm.fibonacci(30);
        }
    }
    
    func testFibonacciOf35PerformanceFor() {
        measureBlock() {
            let val = Algorithm.fibonacci(35);
        }
    }
    
    func testFibonacciOf40PerformanceFor() {
        measureBlock() {
            let val = Algorithm.fibonacci(40);
        }
    }

    func testFibonacciOf45PerformanceFor() {
        measureBlock() {
            let val = Algorithm.fibonacci(45);
        }
    }
    
    func testFibonacciOf50PerformanceFor() {
        measureBlock() {
            let val = Algorithm.fibonacci(50);
        }
    }
}
