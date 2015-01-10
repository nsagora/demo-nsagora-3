//
//  SumTests.swift
//  swift-app
//
//  Created by Alex Cristea on 26/07/14.
//  Copyright (c) 2014 iOS NSAgora. All rights reserved.
//

import UIKit
import XCTest

class SumTests: XCTestCase {
   
    func testMesureBlock() {
        
        measureMetrics([XCTPerformanceMetric_WallClockTime], automaticallyStartMeasuring: false) { () -> Void in
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
