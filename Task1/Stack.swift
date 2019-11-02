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
    
    var count: Int { get }
    
    mutating func append(_ item: Item)
    subscript(i: Int) -> Item { get }
}



// MARK: - Stack
struct Stack<Element>: Container {
    
    private var items = [Element]()
    
    var count: Int {
        return items.count
    }
    
    // Functions
    mutating func push(_ item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element? {
        guard count > 0 else { return nil }
        return items.removeFirst()
    }
    
    mutating func append(_ item: Element) {
        self.push(item)
    }
    
    subscript(i: Int) -> Element {
        return items[i]
    }
    
}
