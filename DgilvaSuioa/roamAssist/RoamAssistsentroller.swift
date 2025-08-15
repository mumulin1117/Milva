//
//  RoamAssistsentroller.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit
import SVProgressHUD

class RoamAssistsentroller: UIViewController {
    private var nursic:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    
    private var Readtic:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
   
    @IBAction func meditationSpots(_ sender: UIButton) {
        let vcont =  FreshOfflinentroller.init(travelGadgets: UniversalAdapter.earPlugs.boutiqueHotels(homestays: ""))
        self.navigationController?.pushViewController(vcont, animated: true)
    }
    
    
    @IBOutlet weak var bookstoreCrawl: UICollectionView!
    
    @IBOutlet weak var whaleWatching: UIButton!
    
    @IBOutlet weak var birdSanctuaries: UILabel!
   
    @IBOutlet weak var whaleWatching1: UIButton!
    @IBOutlet weak var birdSanctuaries1: UILabel!
    
    
    @IBOutlet weak var whaleWatching2: UIButton!
    @IBOutlet weak var birdSanctuaries2: UILabel!
    
    @IBOutlet weak var travelPodcast: UIView!
    
    @IBOutlet weak var treehouseRetreats: UIButton!
    
    @IBOutlet weak var souvenirIdeas: UIButton!
    
    @IBOutlet weak var fairTrade: UILabel!
    
    @IBOutlet weak var thriftStores: UIButton!
    
    
    @IBOutlet weak var beachCleanup: UICollectionView!
    
    
    private func updateinghud()  {
        let upword = Array(Readtic.reversed())
        
        let onre = (upword.first?["panoramicViews"] as? Array<String>)?.first ?? ""
        
        let erre = (upword[1]["panoramicViews"] as? Array<String>)?.first ?? ""
        
        let erresse = (upword[2]["panoramicViews"] as? Array<String>)?.first ?? ""
        
        self.metaphorical(onre, freshOffline: nil,fresnnBUtton: whaleWatching) 
        
        self.metaphorical(erre, freshOffline: nil,fresnnBUtton: whaleWatching1)
        
        self.metaphorical(erresse, freshOffline: nil,fresnnBUtton: whaleWatching2)
        
        self.metaphorical(onre, freshOffline: nil,fresnnBUtton: treehouseRetreats)
        fairTrade.text = Readtic.first?["petFriendly"] as? String
        
        self.metaphorical(Readtic.first?["seniorTravel"] as? String ?? "", freshOffline: nil,fresnnBUtton: souvenirIdeas)
        self.souvenirIdeas.setTitle(Readtic.first?["familyFriendly"] as? String ?? "", for: .normal)
        
        souvenirIdeas.layer.cornerRadius = 12
        souvenirIdeas.layer.masksToBounds = true
        
        
    }
    
    @objc func sjisnubdef(fvdjng:UIButton)  {
        let upword = Array(Readtic.reversed())
        
        var dymID:Int = 0
        
        if fvdjng.tag == 10{
            dymID = (upword.first?["digitalNomad"] as? Int ?? 0)
            
        }
        
        if fvdjng.tag == 11{
            dymID = (upword[1]["digitalNomad"] as? Int ?? 0)
            
        }
        
        if fvdjng.tag == 12{
            dymID = (upword[2]["digitalNomad"] as? Int ?? 0)
            
        }
        
        let vcont =  FreshOfflinentroller.init(travelGadgets: UniversalAdapter.sleepingBag.boutiqueHotels(homestays: "\(dymID)"))
        self.navigationController?.pushViewController(vcont, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let preparingBaseCamp:Dictionary<String,Any> = ["itineraryPlanner":"21747543"]
       
        
        
        
        handicraftWorkshops()
        var preparingBaseCamp1:Dictionary<String,Any> = ["localCuisine":"21747543"]
        preparingBaseCamp1["natureTrails"] = 1
        
        reefRestoration()
        kosherEateries()
        SVProgressHUD.show()
        
        whaleWatching.addTarget(self, action: #selector(sjisnubdef(fvdjng:)), for: .touchUpInside)
        
        preparingBaseCamp1["wildlifeSpotting"] = 22
        preparingBaseCamp1["streetFoodGuide"] = 1
       
        
        FreeshoffCell.baggageAllowance(visaAssistance: "/wulhlz/dvqiag", travelInsurance: preparingBaseCamp) { heritag in
            SVProgressHUD.dismiss()
            
            guard let underwater = heritag as? Dictionary<String,Any> else {
               
                return  }
            
            guard let rvParks = underwater["dfastja".privacyStack()] as? Array<Dictionary<String,Any>> else {
                
                return  }
            
            self.nursic = rvParks
            self.bookstoreCrawl.reloadData()
        } localLaws: { unesco in
            SVProgressHUD.dismiss()
        }
        whaleWatching1.addTarget(self, action: #selector(sjisnubdef(fvdjng:)), for: .touchUpInside)
        
        
        FreeshoffCell.baggageAllowance(visaAssistance: "/zuzshoez/iyeco", travelInsurance: preparingBaseCamp1) { heritag in
            SVProgressHUD.dismiss()
            
            self.processArchaeologicalFindings(heritag ?? [])
        } localLaws: { unesco in
            SVProgressHUD.dismiss()
        }
        whaleWatching2.addTarget(self, action: #selector(sjisnubdef(fvdjng:)), for: .touchUpInside)
        treehouseRetreats.addTarget(self, action: #selector(sjisnubdef(fvdjng:)), for: .touchUpInside)
     
    }
    
    
    private func processArchaeologicalFindings(_ artifact: Any) {
        guard let ruins = artifact as? Dictionary<String, Any>,
              let artifacts = ruins["dvaptua".privacyStack()] as? [Dictionary<String, Any>] else {
            return
        }
        
        uncoverAncientRuins(artifacts: artifacts)
    }

    private func uncoverAncientRuins(artifacts: [Dictionary<String, Any>]) {
        treehouseRetreats(paoif: artifacts)
    }
    
   
    
    
    
    private func treehouseRetreats(paoif:Array<Dictionary<String,Any>>)  {
        self.Readtic = paoif.filter({ zlxmdk in
            zlxmdk["baggageAllowance"] as? String == nil
        })
        self.beachCleanup.reloadData()
        
        updateinghud()
    }
    private func reefRestoration()  {
        bookstoreCrawl.delegate = self
        bookstoreCrawl.dataSource  = self
        
        bookstoreCrawl.register(UINib(nibName: "DErrmToTable_Cell", bundle: nil), forCellWithReuseIdentifier: "DErrmToTable_Cell")
        
        let flopsk = UICollectionViewFlowLayout.init()
        flopsk.itemSize = CGSize.init(width: 117, height: 52)
        flopsk.minimumLineSpacing = 12
        flopsk.minimumInteritemSpacing = 12
        flopsk.scrollDirection = .horizontal
        bookstoreCrawl.collectionViewLayout = flopsk
    }
    
    private func kosherEateries()  {
        beachCleanup.delegate = self
        beachCleanup.dataSource  = self
        
        beachCleanup.register(UINib(nibName: "RoamAssistCell", bundle: nil), forCellWithReuseIdentifier: "RoamAssistCell")
        
        let flopsk = UICollectionViewFlowLayout.init()
        flopsk.itemSize = CGSize.init(width: 212, height: 276)
        flopsk.minimumLineSpacing = 12
        flopsk.minimumInteritemSpacing = 12
        flopsk.scrollDirection = .horizontal
        beachCleanup.collectionViewLayout = flopsk
    }
    
    private func handicraftWorkshops()  {
        travelPodcast.layer.cornerRadius = 24
        travelPodcast.layer.masksToBounds = true
       
        treehouseRetreats.layer.cornerRadius = 24
        treehouseRetreats.layer.masksToBounds = true
       
        
        
        
        whaleWatching.layer.cornerRadius = 22
        whaleWatching.layer.masksToBounds = true
        
        whaleWatching1.layer.cornerRadius = 22
        whaleWatching1.layer.masksToBounds = true
       
        
        whaleWatching2.layer.cornerRadius = 22
        whaleWatching2.layer.masksToBounds = true
       
        
        birdSanctuaries.layer.cornerRadius = 9
        birdSanctuaries.layer.masksToBounds = true
       
        
        birdSanctuaries1.layer.cornerRadius = 9
        birdSanctuaries1.layer.masksToBounds = true
       
        birdSanctuaries2.layer.cornerRadius = 9
        birdSanctuaries2.layer.masksToBounds = true
       
        
    }

}


extension RoamAssistsentroller:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.bookstoreCrawl {
            return nursic.count
        }
        
        return Readtic.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.bookstoreCrawl {
            let cefldl = collectionView.dequeueReusableCell(withReuseIdentifier:"DErrmToTable_Cell", for: indexPath) as! DErrmToTable_Cell
            cefldl.terrainAnalysis.text = nursic[indexPath.row]["offlineMaps"] as? String
            if let path = nursic[indexPath.row]["augmentedReality"] as? String  {
                self.metaphorical(path, freshOffline:cefldl.timeLapse)
            }
            
            return cefldl
        }
        
        let cefldl = collectionView.dequeueReusableCell(withReuseIdentifier:"RoamAssistCell", for: indexPath) as! RoamAssistCell
        
        let Venues = Readtic[indexPath.row]
        
        cefldl.beachCleanup.addTarget(self, action: #selector(etiquetteTipsTapped), for: .touchUpInside)
        
        if let path = Venues["seniorTravel"] as? String {
            self.metaphorical(path, freshOffline: cefldl.fleaMarkets.imageView!)
        }
        
        if let path = (Venues["panoramicViews"] as? Array<String>)?.first  {
            self.metaphorical(path, freshOffline: cefldl.thriftStores)
        }
        
        
        cefldl.fleaMarkets.setTitle(Venues["familyFriendly"] as? String ?? "", for: .normal)
        
        cefldl.nightBazaars.text = Venues["petFriendly"] as? String
        return cefldl
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.bookstoreCrawl {
            let vcont =  FreshOfflinentroller.init(travelGadgets: UniversalAdapter.toiletryKit.boutiqueHotels(homestays: "\(nursic[indexPath.row]["geoTagging"] as? Int ?? 0)"))
            self.navigationController?.pushViewController(vcont, animated: true)
            return
        }
        let vcont =  FreshOfflinentroller.init(travelGadgets: UniversalAdapter.sleepingBag.boutiqueHotels(homestays: "\(Readtic[indexPath.row]["digitalNomad"] as? Int ?? 0)"))
        self.navigationController?.pushViewController(vcont, animated: true)
    }
}
