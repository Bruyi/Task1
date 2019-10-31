//
//  ViewController.swift
//  Task1
//
//  Created by Bruyi on 29.10.2019.
//  Copyright © 2019 Bruyi. All rights reserved.
//

import UIKit

protocol Container {
    associatedtype Item
    mutating func append(_ item: Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }
}

struct Stack<Element>: Container {
    var items = [Element]()
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeFirst()
    }
    mutating func append(_ item: Element) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Element {
        return items[i]
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var insertField: UITextField!
    @IBOutlet weak var deletedLabel: UILabel!
    @IBOutlet weak var countlabel: UILabel!
    
    @IBAction func insertButton(_ sender: Any) {
        Stack.push(insertField.text)
        insertField.clearsOnInsertion
    }
    @IBAction func deleteButton(_ sender: Any) {
        Stack.pop()
    }
    @IBAction func countButton(_ sender: Any) {
        countlabel.text = Stack.count()
    }
    
    

}

extension Array: Container {}
