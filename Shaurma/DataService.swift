//
//  DataService.swift
//  Shaurma
//
//  Created by Dmytro Aprelenko on 12.02.17.
//  Copyright © 2017 Dmytro Aprelenko. All rights reserved.
//

import Foundation

protocol DataServiceDelegate: class {
    func shaurmaDataLoaded()
}

class DataService {
    static var instance = DataService()
    
    weak var delegate: DataServiceDelegate?
    
    var shaurmaArr: Array<Shaurma> = []
    

    func loadShaurmaData() {
        //Chicken Shaurma
        shaurmaArr.append(Shaurma(id: 1, productName: "Mild wheat chicken shaverma", lavashId: 1, stuffing: 2, souceId: 1))
        shaurmaArr.append(Shaurma(id: 2, productName: "New egg chicken shaverma", lavashId: 2, stuffing: 2, souceId: 2))
        shaurmaArr.append(Shaurma(id: 3, productName: "Hot egg chicken shaverma", lavashId: 2, stuffing: 2, souceId: 3))
        shaurmaArr.append(Shaurma(id: 4, productName: "New wheat chicken shaverma", lavashId: 1, stuffing: 2, souceId: 2))

        // Beef Shaurma
        shaurmaArr.append(Shaurma(id: 5, productName: "Mild wheat beef shaverma", lavashId: 1, stuffing: 1, souceId: 1))
        shaurmaArr.append(Shaurma(id: 6, productName: "Hot egg beef shaverma", lavashId: 2, stuffing: 1, souceId: 3))
        shaurmaArr.append(Shaurma(id: 7, productName: "New wheat beef shaverma", lavashId: 1, stuffing: 1, souceId: 2))
        shaurmaArr.append(Shaurma(id: 8, productName: "New egg beef shaverma", lavashId: 2, stuffing: 1, souceId: 2))
        
        // Red Fish Shaurma
        shaurmaArr.append(Shaurma(id: 9, productName: "Hot egg fish shaverma", lavashId: 2, stuffing: 3, souceId: 3))
        shaurmaArr.append(Shaurma(id: 10, productName: "New wheat fish shaverma", lavashId: 1, stuffing: 3, souceId: 2))
        shaurmaArr.append(Shaurma(id: 11, productName: "Hot wheat fish shaverma", lavashId: 1, stuffing: 3, souceId: 3))
        shaurmaArr.append(Shaurma(id: 12, productName: "Mild egg fish shaverma", lavashId: 2, stuffing: 3, souceId: 1))

        // Mouse Shaurma
        shaurmaArr.append(Shaurma(id: 13, productName: "Whaaat is that looking at me?", lavashId: 1, stuffing: 4, souceId: 1))

        //Beacon Shaurma
        shaurmaArr.append(Shaurma(id: 14, productName: "Hot egg beacon shaverma", lavashId: 2, stuffing: 5, souceId: 3))
        shaurmaArr.append(Shaurma(id: 15, productName: "Hot wheat beacon shaverma", lavashId: 1, stuffing: 5, souceId: 3))
        shaurmaArr.append(Shaurma(id: 16, productName: "New egg beacon shaverma", lavashId: 2, stuffing: 5, souceId: 2))
        shaurmaArr.append(Shaurma(id: 17, productName: "Mild wheat beacon shaverma", lavashId: 1, stuffing: 5, souceId: 1))
        
        delegate?.shaurmaDataLoaded()

    }
}
