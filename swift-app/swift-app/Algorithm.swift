//
//  Algorithm.swift
//  swift-app
//
//  Created by Alex Cristea on 26/07/14.
//  Copyright (c) 2014 iOS NSAgora. All rights reserved.
//

import Foundation

class Algorithm {
    
    class func summ(n:Double)->Double {
        var sum:Double = 0;
        for var i:Double = 0; i<=n; i++ {
            sum += i;
        }
        
        return sum;
    }
    
    class func sum(n:Double, callback:(sum:Double)->Void) {
    
        let queue = dispatch_queue_create("queue.summ.algorithm", nil);
        dispatch_async(queue) {
            let sum = self.summ(n)
            dispatch_async(dispatch_get_main_queue()) {
                callback(sum:sum);
            }
        }
    }
    
    class func fibonacci(n:Int)->Int {
        return (n < 2) ? 1 : self.fibonacci(n-1) + self.fibonacci(n-2);
    }
    
    class func fibonacci(n:Int, callback:(fibonacci:Int)->Void) {
        let queue = dispatch_queue_create("fibonacci.summ.algorithm", nil);
        dispatch_async(queue, {
            let fibonacci = self.fibonacci(n);
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                callback(fibonacci: fibonacci);
            })
        });
    }
}
