//
//  ViewController.swift
//  Task1
//
//  Created by Bruyi on 29.10.2019.
//  Copyright © 2019 Bruyi. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    // count
    @IBOutlet private weak var countlabel: UILabel!
    // add
    @IBOutlet private weak var addTextField: UITextField!
    // delete
    @IBOutlet private weak var deleteValueLabel: UILabel!
    // search
    @IBOutlet private weak var searchTextField: UITextField!
    @IBOutlet private weak var searchValueLabel: UILabel!
    
    
    private var list = Stack<String>()
    
    
    // MARK: - Interface
    private func updateCountElement() {
        countlabel.text = String(list.count)
    }
    
    
    // MARK: - Buttons
    @IBAction func addButtonHit(_ sender: Any) {
        guard let str = addTextField.text, !str.isEmpty else { return }
        addTextField.text = ""
        list.append(str)
        updateCountElement()
    }
    
    @IBAction func deleteButtonHit(_ sender: Any) {
        deleteValueLabel.text = list.pop()
        updateCountElement()
    }
    
    @IBAction func searchButtonHit(_ sender: Any) {
        guard let index = searchTextField.text, !index.isEmpty else { return }
        guard let i = UInt(index), let value = list[i] else { return }
        searchValueLabel.text = value
        updateCountElement()
    }
    
}
