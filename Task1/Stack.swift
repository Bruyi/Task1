//
//  Stack.swift
//  Task1
//
//  Created by VadimQw  on 02/11/2019.
//  Copyright © 2019 Bruyi. All rights reserved.
//

// MARK: - Container protocol
protocol Container {
    associatedtype Item
    
    var count: UInt { get }
    
    mutating func append(_ item: Item)
    mutating func pop() -> Item?
    
    subscript(i: UInt) -> Item? { get }
}



// MARK: - Stack
struct Stack<Element>: Container {
  
    private var items = [Element]()
    
    var count: UInt {
        return UInt(items.count)
    }
    
    // Functions
    mutating func append(_ item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element? {
        guard count > 0 else { return nil }
        return items.removeFirst()
    }
    
    subscript(i: UInt) -> Element? {
        guard count > 0 else { return nil }
        guard Int(i) <= Int(count - 1) else { return nil }
        return items[Int(i)]
    }
    
}
