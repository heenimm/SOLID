//
//  Day1+Task5.swift
//  SOLID
//
//  Created by Халимка on 26.03.2024.
//

import Foundation
///Данный программа  нарушает принцип Open-Closed Principle - необходимо  необходимо реализовать протокол
///
protocol SoundProtocol {
    func makeSound()
}

class Animal: SoundProtocol {
    let name: String

    init(name: String) {
        self.name = name
    }

    func makeSound() {
        if name == "Dog" {
            print("Woof")
        } else if name == "Cat" {
            print("Meow")
        }
    }
}

