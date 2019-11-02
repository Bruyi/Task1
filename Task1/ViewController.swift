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
    
    
    // MARK: - Buttons
    @IBAction func insertButton(_ sender: Any) {
        guard let str = insertField.text else { return }
        list.push(String(str))
        insertField.text = ""
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        deletedLabel.text = list.pop()
    }
    
    @IBAction func countButton(_ sender: Any) {
        guard list.count != 0 else {return}
        countlabel.text = String(list.count)
    }
    
    @IBAction func returnButton(_ sender: Any) {
//        guard let inum = Double(returnField.text) else {return}
//        returnLabel.text = String(list[inum-1])
    }
    
}
