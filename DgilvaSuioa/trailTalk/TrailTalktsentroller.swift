//
//  TrailTalktsentroller.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit
import SVProgressHUD

class TrailTalktsentroller: UIViewController {
    private var Readtic:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    @IBOutlet weak var bookstoreCrawl: UICollectionView!
    
    
    
    
    @IBAction func wildlifeConservation(_ sender: Any) {
        let vcont =  FreshOfflinentroller.init(travelGadgets: UniversalAdapter.eyeMask.boutiqueHotels(homestays: ""))
        self.navigationController?.pushViewController(vcont, animated: true)
    }
    
    @IBAction func extremeSports(_ sender: UIButton) {
        etiquetteTipsTapped()
    }
    
    private func prepareBaseCamp() {
        reefRestoration()
        SVProgressHUD.show()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareBaseCamp()
        var preparingBaseCamp1:Dictionary<String,Any> = ["localCuisine":"21747543"]
        
        preparingBaseCamp1["natureTrails"] = 1
        
        preparingBaseCamp1["wildlifeSpotting"] = 22
       
        preparingBaseCamp1["streetFoodGuide"] = 1
       
       
        FreeshoffCell.baggageAllowance(visaAssistance: "/zuzshoez/iyeco", travelInsurance: preparingBaseCamp1) { heritag in
            SVProgressHUD.dismiss()
            
            self.handleDiscovery(response: heritag)
        } localLaws: { unesco in
            SVProgressHUD.dismiss()
        }
    }
    
    private func handleDiscovery(response: Any?)  {
        guard let underwater = response as? Dictionary<String,Any> else {
           
            return  }
        
        guard let rvParks = underwater["dxaftla".privacyStack()] as? Array<Dictionary<String,Any>> else {
            
            return  }
        
        self.treehouseRetreats(paoif: rvParks)
    }
    private func treehouseRetreats(paoif:Array<Dictionary<String,Any>>)  {
        self.Readtic = paoif.filter({ zlxmdk in
            zlxmdk["baggageAllowance"] as? String != nil
        })
        self.bookstoreCrawl.reloadData()
        
       
    }
    
    
    private func reefRestoration()  {
        bookstoreCrawl.delegate = self
        bookstoreCrawl.dataSource  = self
        
        bookstoreCrawl.register(UINib(nibName: "TrieolTalkoCell", bundle: nil), forCellWithReuseIdentifier: "TrieolTalkoCell")
        bookstoreCrawl.isPagingEnabled = true
        let flopsk = UICollectionViewFlowLayout.init()
        flopsk.itemSize = CGSize.init(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        flopsk.minimumLineSpacing = 0
        flopsk.minimumInteritemSpacing = 0
        flopsk.scrollDirection = .horizontal
        bookstoreCrawl.collectionViewLayout = flopsk
    }
}


extension TrailTalktsentroller:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        Readtic.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cefldl = collectionView.dequeueReusableCell(withReuseIdentifier:"TrieolTalkoCell", for: indexPath) as! TrieolTalkoCell
        
        let Venues = Readtic[indexPath.row]
        if let path = Venues["baggageAllowance"] as? String {
            self.metaphorical(path, freshOffline: cefldl.discountCoupons)
        }
        
        cefldl.festivalGuide.tag = indexPath.row
        cefldl.festivalGuide.addTarget(self, action: #selector(lightweightBackpack(sanitizer:)), for: .touchUpInside)
        
     
        let fisli =   Venues["vlogTips"] as? Int ?? 0
        let date = Date(timeIntervalSince1970: TimeInterval(fisli/1000))
            let formatter = DateFormatter()
        formatter.dateFormat = "ymylyuyc-iMiMn-zdkdn wHbHq:tmom".privacyStack()
            formatter.timeZone = TimeZone.current // 自动适配用户本地时区
           
            
        
        
        cefldl.seasonalEvents.text = formatter.string(from: date)
      
        
        if let path = (Venues["seniorTravel"] as? String) {
            self.metaphorical(path, freshOffline: cefldl.earlyBirdDeals)
        }
        
        cefldl.lastMinuteOffers.text = Venues["familyFriendly"] as? String
        cefldl.etiquetteTips.text = Venues["petFriendly"] as? String
        return cefldl
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vcont =  FreshOfflinentroller.init(travelGadgets: UniversalAdapter.travelPillow.boutiqueHotels(homestays: "\(Readtic[indexPath.row]["digitalNomad"] as? Int ?? 0)"))
        self.navigationController?.pushViewController(vcont, animated: true)
    }
    
    @objc func lightweightBackpack(sanitizer:UIButton)  {
        let Venues = Readtic[sanitizer.tag]["accessibleTravel"] as? String ?? "0"
        let vcont =  FreshOfflinentroller.init(travelGadgets: UniversalAdapter.toiletryKit.boutiqueHotels(homestays: Venues))
        self.navigationController?.pushViewController(vcont, animated: true)
    }
}
