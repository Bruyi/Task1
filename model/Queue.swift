//
//  Queue.swift
//  Task1
//
//  Created by VadimQw  on 02/11/2019.
//  Copyright © 2019 Bruyi. All rights reserved.
//

struct Queue<Element>: Container {
  
    private var elements = [Element]()
    
    var count: Int {
        return elements.count
    }
    
    
    // Functions
    mutating func add(_ element: Element) {
        elements.append(element)
    }
    
    mutating func get(index: Int) -> Element? {
        guard count > 0 else { return nil }
        guard Int(index) <= Int(count - 1) else { return nil }
        return elements.remove(at: index)
    }
    
}
