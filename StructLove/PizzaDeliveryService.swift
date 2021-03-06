//
//  PizzaDeliveryService.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct PizzaDeliveryService {
    
    let location: Coordinate
    var pizzasAvailable: Int
    
    init(location: Coordinate) {
        self.location = location
        self.pizzasAvailable = 10
    }
    
    func isInRange(to: Coordinate) -> Bool {
        let destination = to
        if self.location.distance(to: destination) < 5000 {
            return true
        }
        else {
            return false
        }
    }
    
    mutating func deliverPizza(to: Coordinate) -> Bool {
        let destination = to
        
        if self.isInRange(to: destination) && self.pizzasAvailable > 0 {
            self.pizzasAvailable -= 1
            return true
        }
        else {
            return false
        }
    }
}
