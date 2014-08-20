//
//  SumTests.m
//  obj-app
//
//  Created by Alex Cristea on 26/07/14.
//  Copyright (c) 2014 iOS NSAgora. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Algorithm.h"

@interface SumTests : XCTestCase

@end

@implementation SumTests

- (void)testSumOf1000000
{
    [self measureBlock: ^{
        [Algorithm sum:1000000];
    }];
}

- (void)testSumOf2000000
{
    [self measureBlock: ^{
        [Algorithm sum:2000000];
    }];
}

- (void)testSumOf3000000
{
    [self measureBlock: ^{
        [Algorithm sum:3000000];
    }];
}

- (void)testSumOf5000000
{
    [self measureBlock: ^{
        [Algorithm sum:5000000];
    }];
}


- (void)testSumOf8000000
{
    [self measureBlock: ^{
        [Algorithm sum:8000000];
    }];
}

- (void)testSumOf13000000
{
    [self measureBlock: ^{
        [Algorithm sum:13000000];
    }];
}

- (void)testSumOf21000000
{
    [self measureBlock: ^{
        [Algorithm sum:21000000];
    }];
}

- (void)testSumOf34000000
{
    [self measureBlock: ^{
        [Algorithm sum:34000000];
    }];
}

@end
