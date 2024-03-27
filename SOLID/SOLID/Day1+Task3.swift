//
//  Day1+Task3.swift
//  SOLID
//
//  Created by Халимка on 26.03.2024.
//

import Foundation
///Liskov Substitution Principle - проблема в том что мы завязаны не на абстракцию / можно добавить протокол
///
protocol FlyingProtocol {
    func fly()
}
extension FlyingProtocol {
    func fly() {
        // Реализация полета
    }
}
class Bird: FlyingProtocol {
    
}

class Penguin: Bird {
    func fly() {
        fatalError("Penguins can't fly!")
    }
}

let myBird: Bird = Penguin()
//myBird.fly()  // Приведет к ошибке во время выполнения
