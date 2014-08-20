//
//  Random.swift
//  swift-app
//
//  Created by Alex Cristea on 26/07/14.
//  Copyright (c) 2014 iOS NSAgora. All rights reserved.
//

import Foundation
import CoreFoundation
import CoreGraphics

extension Double {
    static var max:Double { return 0x100_000_000 }
}

class Random: NSObject {
    
    class func nextDouble()->Double
    {
        var randomInteger = arc4random();
        var randomDouble:Double =  Double(randomInteger);
        return randomDouble / Double.max;
    }
    
    class func nextDoubleBetween(var minValue min:Double, var maxValue max:Double)->Double
    {
        if (min == max) {
            return min;
        }
        
        if (min > max) {
            var man:Double = max;
            max = min;
            max = man;
        }
        
        return self.nextDouble() * (max-min) + min;
    }
    
    func drawGradientRect(context: CGContext, startColor: CGColor, endColor: CGColor, width: CGFloat, height: CGFloat) {
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let gradient = CGGradientCreateWithColors(colorSpace, [startColor, endColor], [0.0, 0.1])
    }
}