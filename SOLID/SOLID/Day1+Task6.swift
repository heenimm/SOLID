//
//  Day1+Task6.swift
//  SOLID
//
//  Created by Халимка on 26.03.2024.
//

import Foundation
///Данный код нарушает принцип инверсии зависимостей - у нас класс верхнего зависит от класса нижнего уровня именно от let bulb: LightBulb
///Чтобы решить проблему необхлдимо создать абстракцию и завязать на нее

class Light {
    func turnOn() {}
    func turnOff() {}
}

///Конкретная реализация - низкоуровневый слой
class LightBulb: Light {
    override func turnOn() {
        // включает свет
//        lamp.on()
    }
    
    override func turnOff() {
        // выключает свет
//        lamp.off()
    }
    
}

/// Выключатель верхний уровень
class Switch {
    let bulb: Light
    
    init(bulb: LightBulb) {
        self.bulb = bulb
    }
    
    func toggle() {
        bulb.turnOn()
    }
}
