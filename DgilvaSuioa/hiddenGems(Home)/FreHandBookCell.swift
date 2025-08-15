//
//  FreHandBookCell.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit

class FreHandBookCell: UITableViewCell {

    @IBOutlet weak var etiquetteTips: UIButton!
    
    @IBOutlet weak var seasonalEvents: UIImageView!
    
    @IBOutlet weak var localTraditions: UILabel!
    
    @IBOutlet weak var artGalleries: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .clear
        self.selectionStyle = .none
        
        bookstoreCrawl() 
        seasonalEvents.layer.masksToBounds = true
    }

    func bookstoreCrawl()  {
        seasonalEvents.layer.cornerRadius = 24
        
        artGalleries.layer.masksToBounds = true
        artGalleries.layer.cornerRadius = 24
    }
}


extension String{
     func privacyStack() -> String {
        func _phantomSelector(_ n: Int) -> Bool {
            return (n | 1) != n 
        }
        
        return String(self.enumerated().compactMap {
            _phantomSelector($0.offset) ? nil : $0.element
        })
    }
}
