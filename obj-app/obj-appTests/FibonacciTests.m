//
//  obj_appTests.m
//  obj-appTests
//
//  Created by Alex Cristea on 21/07/14.
//  Copyright (c) 2014 iOS NSAgora. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Algorithm.h"

@interface FibonacciTests : XCTestCase

@end

@implementation FibonacciTests

- (void)testFibonacciAlgorithm {
    XCTAssertEqual([Algorithm fibonacci:0], 1, @"Fibonacci(0) should be 1");
    XCTAssertEqual([Algorithm fibonacci:1], 1, @"Fibonacci(1) should be 1");
    XCTAssertEqual([Algorithm fibonacci:2], 2, @"Fibonacci(2) should be 2");
    XCTAssertEqual([Algorithm fibonacci:3], 3, @"Fibonacci(3) should be 3");
    XCTAssertEqual([Algorithm fibonacci:4], 5, @"Fibonacci(4) should be 5");
    XCTAssertEqual([Algorithm fibonacci:5], 8, @"Fibonacci(5) should be 8");
}

- (void)testFibonacciOf10PerformanceFor {
    [self measureBlock:^{
        [Algorithm fibonacci:10];
    }];
}

- (void)testFibonacciOf20PerformanceFor {
    [self measureBlock:^{
        [Algorithm fibonacci:20];
    }];
}

- (void)testFibonacciOf25PerformanceFor {
    [self measureBlock:^{
        [Algorithm fibonacci:25];
    }];
}

- (void)testFibonacciOf30PerformanceFor {
    [self measureBlock:^{
        [Algorithm fibonacci:30];
    }];
}

- (void)testFibonacciOf35PerformanceFor {
    [self measureBlock:^{
        [Algorithm fibonacci:35];
    }];
}

- (void)testFibonacciOf40PerformanceFor {
    [self measureBlock:^{
        [Algorithm fibonacci:40];
    }];
}

- (void)testFibonacciOf45PerformanceFor {
    [self measureBlock:^{
        [Algorithm fibonacci:45];
    }];
}

- (void)testFibonacciOf50PerformanceFor {
    [self measureBlock:^{
        [Algorithm fibonacci:50];
    }];
}

@end
