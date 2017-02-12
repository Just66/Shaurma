//
//  Shaurma.swift
//  Shaurma
//
//  Created by Dmytro Aprelenko on 12.02.17.
//  Copyright © 2017 Dmytro Aprelenko. All rights reserved.
//

import Foundation

enum Lavash: Int {
    case Flour = 1
    case Eggs = 2
}

enum Stuffing: String {
    case Beef = "Beef"
    case Chicken = "Chicken"
    case RedFish = "Red Fish"
    case Mouse = "Mouse"
    case Beacon = "Beacon"
}

enum Souce: Int {
    case Ketchup = 1
    case Mayonnaise = 2
    case Mustard = 3
}

struct Shaurma {
    
    private var _id: Int!
    private var _productName: String!
    private var _lavashId: Lavash!
    private var _stuffId: Stuffing!
    private var _souceId: Souce!
    
    var id: Int {
        return _id
    }
    
    var productName: String {
        return _productName
    }
    
    var lavashId: Lavash {
        return _lavashId
    }
    
    var stuffing: Stuffing  {
        return _stuffId
    }
    
    var souceId: Souce {
        return _souceId
    }
    
    init(id: Int, productName: String, lavashId: Int, stuffing: Int, souceId: Int) {
        _id = id
        _productName = productName
        
        // Lavash
        switch lavashId {
        case 2:
            self._lavashId = Lavash.Eggs
            
        default:
            self._lavashId = Lavash.Flour
        }
        
        //Stuffing
        switch stuffing {
        case 2:
            self._stuffId = Stuffing.Chicken
        case 3:
            self._stuffId = Stuffing.RedFish
        case 4:
            self._stuffId = Stuffing.Mouse
        case 5:
            self._stuffId = Stuffing.Beacon
        default:
            self._stuffId = Stuffing.Beef
        }
        
        //Souce
        switch souceId {
        case 2:
            self._souceId = Souce.Mayonnaise
        case 3:
            self._souceId = Souce.Mustard
        default:
            self._souceId = Souce.Ketchup
        }
    }
}
