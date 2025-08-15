//
//  TrieolTalkoCell.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit

class TrieolTalkoCell: UICollectionViewCell {

    @IBOutlet weak var discountCoupons: UIImageView!
    
    @IBOutlet weak var earlyBirdDeals: UIImageView!
    
    @IBOutlet weak var lastMinuteOffers: UILabel!
    
    
    @IBOutlet weak var seasonalEvents: UILabel!
    
    @IBOutlet weak var festivalGuide: UIButton!
    
    
    @IBOutlet weak var etiquetteTips: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        currencyConverter()
    }

    
    func currencyConverter()  {
        earlyBirdDeals.layer.cornerRadius = 22
        earlyBirdDeals.layer.masksToBounds = true
        
        
    }
}
