//
//  SumTests.swift
//  swift-app
//
//  Created by Alex Cristea on 26/07/14.
//  Copyright (c) 2014 iOS NSAgora. All rights reserved.
//

import UIKit
import XCTest

// MARK: Unit test

class SumTests: XCTestCase {
   
    func testSumOfZero () {
        let sum = Algorithm.summ(0);
        
        XCTAssertEqual(sum, 0, "Sum must be 0")
    }
    
    func testSumOfOne () {
        let sum = Algorithm.summ(1);
        XCTAssertEqual(sum, 1, "Sum must be 1")
    }
    
    func testSumOfTwo () {
        let sum = Algorithm.summ(2);
        XCTAssertEqual(sum, 3, "Sum must be 3")
    }
    
}

// MARK: Async test

extension SumTests {
    
    func testSumOf_1_000_000_Async () {
        
        let input:Double = 1_000_000;
        let expectedResult:Double = 500_000_500_000;
        var actualResult:Double = 0;
        
        let expectation = expectationWithDescription("Expectation for asyn sum calculator");
        Algorithm.sum(input) { sum in
            actualResult = sum;
            expectation.fulfill();
        }
        waitForExpectationsWithTimeout(1, handler: nil);
        
        XCTAssertEqual(actualResult, expectedResult, "The sum of an \(input) must me equal to \(expectedResult)");
    }
    
    func testSumOf_5_000_000_Async () {
        
        let input:Double = 5_000_000;
        let expectedResult:Double = 12_500_002_500_000;
        var actualResult:Double = 0;
        
        let expectation = expectationWithDescription("Expectation for asyn sum calculator");
        Algorithm.sum(input) { sum in
            actualResult = sum;
            expectation.fulfill();
        }
        waitForExpectationsWithTimeout(1, handler: nil);
        
        XCTAssertEqual(actualResult, expectedResult, "The sum of an \(input) must me equal to \(expectedResult)");
    }
}

// MARK: Perfromance test

extension SumTests {

    func testMesureBlock() {
        
        measureMetrics([XCTPerformanceMetric_WallClockTime], automaticallyStartMeasuring: false) {
            var x = Algorithm.summ(1_000_000);
            
            self.startMeasuring();
            x += Algorithm.summ(2_000_000);
            x += Algorithm.summ(3_000_000);
            x += Algorithm.summ(4_000_000);
            self.stopMeasuring();
        };
    }

    func testSumOf1000000() {
        self.measureBlock() {
            let val = Algorithm.summ(1_000_000);
        }
    }
    
    func testSumOf2000000() {
        self.measureBlock() {
            let val = Algorithm.summ(2_000_000);
        }
    }
    
    func testSumOf3000000() {
        self.measureBlock() {
            let val = Algorithm.summ(3_000_000);
        }
    }
    
    func testSumOf5000000() {
        self.measureBlock() {
            let val = Algorithm.summ(5_000_000);
        }
    }
    
    
    func testSumOf8000000() {
        self.measureBlock() {
            let val = Algorithm.summ(8_000_000);
        }
    }
    
    func testSumOf13000000() {
        self.measureBlock() {
            let val = Algorithm.summ(13_000_000);
        }
    }
    
    func testSumOf21000000() {
        self.measureBlock() {
            let val = Algorithm.summ(21_000_000);
        }
    }
    
    func testSumOf34000000() {
        self.measureBlock() {
            let val = Algorithm.summ(34_000_000);
        }
    }
}
