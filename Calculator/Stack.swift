//
//  Stack.swift
//  Calculator
//
//  Created by Emily Mearns on 5/30/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Stack {
    
    private var numbers = [Float]()
    
    func pop() -> Float? {
        return numbers.removeLast()
    }
    
    func push(number: Float) {
        numbers.append(number)
    }
    
    func log() {
        print(numbers)
    }
    
    func count() -> Int {
        return numbers.count
    }
}