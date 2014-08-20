//
//  Stack.swift
//  swift-app
//
//  Created by Alex Cristea on 26/07/14.
//  Copyright (c) 2014 iOS NSAgora. All rights reserved.
//

import Foundation

struct Stack<T> {
    
    private var items:Array<T> = Array();
    public var count:Int { return items.count }
    
    subscript(index:Int)->T? {
        var itemsCopy:Array = items
            
        if index > count {
            return nil
        }
        return itemsCopy.removeAtIndex(index);
    }
    
    mutating func push(item:T) {
        items.append(item);
    }
    
    mutating func pop()->T? {
        if items.isEmpty {
            return nil;
        }
        return self.items.removeLast();
    }
}