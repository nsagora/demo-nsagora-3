//
//  Algorithm.m
//  obj-app
//
//  Created by Alex Cristea on 26/07/14.
//  Copyright (c) 2014 iOS NSAgora. All rights reserved.
//

#import "Algorithm.h"

@implementation Algorithm

+ (double)sum:(double)n
{
    double sum = 0;
    for (double i=0; i<=n; i++) {
        sum += i;
    }
    
    return sum;
}

+ (int)fibonacci:(int)n
{
    return (n < 2) ? 1 : [self fibonacci:n-1] + [self fibonacci:n-2];
}

@end
