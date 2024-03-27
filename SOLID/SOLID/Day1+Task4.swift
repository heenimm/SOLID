//
//  Day1+Task4.swift
//  SOLID
//
//  Created by Халимка on 26.03.2024.
//

import Foundation

///Interface Segregation Principle& Надо разбить на два протокола
protocol Worker1 {
    func work()
    
}

protocol WorkerEat {
    func eat()
}

class Robot1: Worker1 {
    func work() {
        // Робот работает
    }

    func eat() {
        fatalError("Робот не может кушать")
    }
}
