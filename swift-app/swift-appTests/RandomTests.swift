//
//  RandomTests.swift
//  swift-app
//
//  Created by Alex Cristea on 26/07/14.
//  Copyright (c) 2014 iOS NSAgora. All rights reserved.
//

import UIKit
import XCTest

class RandomTests: XCTestCase {
    
    func testThatGenerateNewValues() {
        
        var x = Random.nextDoubleBetween(minValue: 1024, maxValue: 2048);
        var y = Random.nextDoubleBetween(minValue: 1024, maxValue: 2048);
        
        XCTAssertNotEqualWithAccuracy(x, y, 0.01, "Two sequent numbers should not be the same")
    }
   
}
