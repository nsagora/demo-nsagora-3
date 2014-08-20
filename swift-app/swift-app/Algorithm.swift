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
    
    class func fibonacci(n:Int)->Int {
        return (n < 2) ? 1 : self.fibonacci(n-1) + self.fibonacci(n-2);
    }
}
