//
//  DErrmToTable Cell.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/14.
//

import UIKit

class DErrmToTable_Cell: UICollectionViewCell {

    @IBOutlet weak var timeLapse: UIImageView!
    
    @IBOutlet weak var terrainAnalysis: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        boutiqueHotels()
        
        self.layer.cornerRadius = 18
        self.layer.masksToBounds = true
    }

    private  func boutiqueHotels()  {
        timeLapse.layer.cornerRadius = 18
        timeLapse.layer.masksToBounds = true
    }
}
