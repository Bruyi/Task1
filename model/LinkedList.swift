//
//  LinkedList.swift
//  Task1
//
//  Created by VadimQw  on 03/11/2019.
//  Copyright © 2019 Bruyi. All rights reserved.
//

struct LinkedList<Element>: Container {
    
    var count: Int
    
    private var head = Node()
    private var tail = Node()
    
    
    // Init
    init() {
        count = 0
        head.next = tail
        tail.previous = head
    }
    
    
    // Functions
    mutating func add(_ element: Element) {
        let newNode = Node(value: element, previous: tail.previous, next: tail)
        if let previousTail = tail.previous {
            previousTail.next = newNode
        }
        tail.previous = newNode
        count += 1
    }
    
    func get(index: Int) -> Element? {
        guard index < count else { return nil }
        var currentNode = head
        
        for _ in 0...index {
            guard let node = currentNode.next else { return nil }
            currentNode = node
        }
        return currentNode.value
    }
    
}



// MARK: - Linked List Node
extension LinkedList {
    
    final class Node {
        
        var value: Element?
        
        weak var previous: Node?
        var next: Node?
        
        
        // Init
        init() { }
        
        init(value: Element, previous: Node?, next: Node?) {
            self.value = value
            self.previous = previous
            self.next = next
        }
        
    }
    
}
