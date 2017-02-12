//
//  ShaurmaCell.swift
//  Shaurma
//
//  Created by Dmytro Aprelenko on 12.02.17.
//  Copyright © 2017 Dmytro Aprelenko. All rights reserved.
//

import UIKit

class ShaurmaCell: UICollectionViewCell {

    @IBOutlet weak var shaurmImage: UIImageView!
    @IBOutlet weak var shaurmLable: UILabel!
    
    var shaurma: Shaurma!
    
    func configureCell(shaurma: Shaurma) {
        self.shaurma = shaurma
        
        shaurmImage.image = UIImage(named: shaurma.stuffing.rawValue)
        shaurmLable.text = shaurma.productName
    }
}
