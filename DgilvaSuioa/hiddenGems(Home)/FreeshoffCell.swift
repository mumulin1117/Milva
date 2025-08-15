//
//  FreeshoffCell.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit
import FSPagerView

protocol FreeshoffCellPageDelegate {
    func  explorePage(dex:Int)
}
class FreeshoffCell: UITableViewCell, FSPagerViewDataSource, FSPagerViewDelegate {
    func numberOfItems(in pagerView: FSPagerView) -> Int {
        3
    }
    
    var delaghu:FreeshoffCellPageDelegate?
    
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        cell.imageView?.image = UIImage(named: localImageNames[index])
        cell.imageView?.contentMode = .scaleAspectFill
        cell.imageView?.clipsToBounds = true
        return cell
    }
    
    private let localImageNames = ["elevationProfile", "elevationProfil1e", "elevationProfile3"]
        
       
        
    private lazy var pagerView: FSPagerView = {
        let pv = FSPagerView()
        pv.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
        pv.dataSource = self
        pv.delegate = self
        pv.automaticSlidingInterval = 2.0 // Auto-scroll every 3s
        pv.isInfinite = true // Infinite looping
        pv.transformer = FSPagerViewTransformer(type: .overlap) // Custom transition
        return pv
    }()
        
    @IBOutlet weak var earlyBirdDeals: UIView!
    
    @IBOutlet weak var lastMinuteOffers: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        self.earlyBirdDeals.addSubview(pagerView)
        pagerView.frame = CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 227)
    }

    func pagerView(_ pagerView: FSPagerView, didSelectItemAt index: Int) {
        if self.delaghu != nil {
            self.delaghu?.explorePage(dex:index)
        }
    }
    
}
