//
//  ViewController.swift
//  Task1
//
//  Created by Bruyi on 29.10.2019.
//  Copyright © 2019 Bruyi. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    private enum DataStruct {
        case queue
        case linkedList
    }
    
    
    // Counts
    @IBOutlet private weak var queueCountlabel: UILabel!
    @IBOutlet weak var linkedListCountLabel: UILabel!
    // Add
    @IBOutlet private weak var queueAddTextField: UITextField!
    @IBOutlet weak var linkedListAddTextField: UITextField!
    // Get
    @IBOutlet private weak var queueGetTextField: UITextField!
    @IBOutlet private weak var queueGetValueLabel: UILabel!
    @IBOutlet weak var linkedListGetTextField: UITextField!
    @IBOutlet weak var linkedListGetValueLabel: UILabel!
    
    
    private var queue = Queue<String>()
    private var linkedList = LinkedList<String>()
    
    
    // MARK: - Interface
    private func updateCountLabel(for dataStruct: DataStruct) {
        switch dataStruct {
        case .queue:
            queueCountlabel.text = String(queue.count)
        case .linkedList:
            linkedListCountLabel.text = String(linkedList.count)
        }
    }
    
    // MARK: - Buttons
    @IBAction func addButtonHit(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            guard let element = queueAddTextField.text, !element.isEmpty else { return }
            queueAddTextField.text = ""
            queue.add(element)
        default:
            guard let element = linkedListAddTextField.text, !element.isEmpty else { return }
            linkedListAddTextField.text = ""
            linkedList.add(element)
        }
        updateCountLabel(for: sender.tag == 0 ? .queue : .linkedList)
    }
    
    @IBAction func getButtonHit(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            guard let index = queueGetTextField.text, !index.isEmpty else { return }
            guard let i = UInt(index), let value = queue.get(index: Int(i)) else { return }
            queueGetValueLabel.text = value
            updateCountLabel(for: .queue)
        default:
            guard let index = linkedListGetTextField.text, !index.isEmpty else { return }
            guard let i = UInt(index), let value = linkedList.get(index: Int(i)) else { return }
            linkedListGetValueLabel.text = value
        }
    }
    
}
