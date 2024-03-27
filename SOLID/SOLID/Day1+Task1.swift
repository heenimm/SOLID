//
//  Day1+Task1.swift
//  SOLID
//
//  Created by Халимка on 26.03.2024.
//

import Foundation

///Нарушен принцип единой ответственности, в данном примереt необходимо разделить на  классы
final class UpdateUI {
    func updateUI() {
        //Обновляет UI
    }
}

///
final class NetworkManager {
    func fetchData(url: URL) {
        //Запрос к API
    }
}

///
class Presenter {
    var networkManager: NetworkManager?
    
    init(network: NetworkManager) {
        self.networkManager = network
//        networkManager?.fetchData(url: url)
    }
    
    
}
