//
//  ViewController.swift
//  Task1
//
//  Created by Bruyi on 29.10.2019.
//  Copyright © 2019 Bruyi. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var returnField: UITextField!
    @IBOutlet private weak var insertField: UITextField!
    
    @IBOutlet private weak var deletedLabel: UILabel!
    @IBOutlet private weak var countlabel: UILabel!
    @IBOutlet private weak var returnLabel: UILabel!
    
    
    private var list = Stack<String>()
    
    
    // MARK: - Interface
    private func updateCountElement() {
        countlabel.text = String(list.count)
    }
    
    
    // MARK: - Buttons
    @IBAction func insertButton(_ sender: Any) {
        guard let str = insertField.text, !str.isEmpty else { return }
        insertField.text = ""
        list.push(str)
        updateCountElement()
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        deletedLabel.text = list.pop()
        updateCountElement()
    }
    
    @IBAction func returnButton(_ sender: Any) {
        guard let index = returnField.text, !index.isEmpty else { return }
        guard let i = UInt(index) else { return }
        returnLabel.text = String(list[Int(i)])
        updateCountElement()
    }
    
}
