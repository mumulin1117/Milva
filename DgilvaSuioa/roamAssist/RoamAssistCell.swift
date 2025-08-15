//
//  RoamAssistCell.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit

class RoamAssistCell: UICollectionViewCell {

    
    @IBOutlet weak var thriftStores: UIImageView!
    
    
    @IBOutlet weak var fleaMarkets: UIButton!
    
    @IBOutlet weak var nightBazaars: UILabel!
    
    
    @IBOutlet weak var beachCleanup: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 24
        self.layer.masksToBounds = true
    }

}
