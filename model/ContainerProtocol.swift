//
//  ContainerProtocol.swift
//  Task1
//
//  Created by VadimQw  on 03/11/2019.
//  Copyright © 2019 Bruyi. All rights reserved.
//

protocol Container {
    associatedtype Element
    
    var count: Int { get }
    
    mutating func add(_ element: Element)
    mutating func get(index: Int) -> Element?
}
