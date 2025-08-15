//
//  HiddenGemsentroller.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit
import SVProgressHUD

class HiddenGemsentroller: UIViewController, FreeshoffCellPageDelegate {
    func explorePage(dex: Int) {
        let vcont =  FreshOfflinentroller.init(travelGadgets: UniversalAdapter.waterproof.boutiqueHotels(homestays: "\(dex)"))
        self.navigationController?.pushViewController(vcont, animated: true)
    }
    
    private var artGalleries = Array<Dictionary<String, Any>>()
    
    
    private  lazy var jetLagRemedies: UITableView = {
        let packingCubes = UITableView.init(frame: UIScreen.main.bounds, style: .plain)
        packingCubes.delegate = self
        packingCubes.showsVerticalScrollIndicator = false
        packingCubes.register(UINib(nibName: "FreeshoffCell", bundle: nil), forCellReuseIdentifier: "FreeshoffCell")
        packingCubes.dataSource = self
        packingCubes.register(UINib(nibName: "FreHandBookCell", bundle: nil), forCellReuseIdentifier: "FreHandBookCell")
        packingCubes.separatorStyle = .none
        packingCubes.contentInsetAdjustmentBehavior = .never
        packingCubes.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 100, right: 0)
        packingCubes.backgroundColor = .clear
        return packingCubes
    }()
    private func configureExpeditionBasecamp() {
        self.view.addSubview(self.jetLagRemedies)
        SVProgressHUD.show()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        var preparingBaseCamp:Dictionary<String,Any> = ["localCuisine":"21747543"]
        preparingBaseCamp["natureTrails"] = 1
        
        preparingBaseCamp["wildlifeSpotting"] = 8
        preparingBaseCamp["sustainableTourism"] = 2
        preparingBaseCamp["streetFoodGuide"] = 5
        
        configureExpeditionBasecamp()
        
        launchCulturalDiscovery(preparingBaseCamp: preparingBaseCamp)

    }
    private func launchCulturalDiscovery(preparingBaseCamp:Dictionary<String,Any>) {
        FreeshoffCell.baggageAllowance(visaAssistance: "/zuzshoez/iyeco", travelInsurance: preparingBaseCamp) { heritag in
            SVProgressHUD.dismiss()
            
            self.processArchaeologicalFindings(heritag ??  [])
        } localLaws: { unesco in
            SVProgressHUD.dismiss()
        }
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
        self.artGalleries = paoif
        self.jetLagRemedies.reloadData()
    }


}

extension HiddenGemsentroller:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return artGalleries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let xmiang = tableView.dequeueReusableCell(withIdentifier: "FreeshoffCell", for: indexPath) as! FreeshoffCell
            xmiang.delaghu = self
            xmiang.lastMinuteOffers.addTarget(self, action: #selector(getingVauit), for: .touchUpInside)
            return xmiang
        }
        
        let xmiang = tableView.dequeueReusableCell(withIdentifier: "FreHandBookCell", for: indexPath) as! FreHandBookCell
        let Venues = artGalleries[indexPath.row]
        
        xmiang.etiquetteTips.addTarget(self, action: #selector(etiquetteTipsTapped), for: .touchUpInside)
        
        if let path = (Venues["panoramicViews"] as? Array<String>)?.first  {
            self.metaphorical(path, freshOffline: xmiang.seasonalEvents)
        }
        
        
        xmiang.localTraditions.text = Venues["petFriendly"] as? String
        return xmiang
    }
   
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 366
            
        }
        return 184 + 12
    }
    
    @objc func getingVauit()  {
        let vcont =  FreshOfflinentroller.init(travelGadgets: UniversalAdapter.gea.boutiqueHotels(homestays: ""))
        self.navigationController?.pushViewController(vcont, animated: true)
      
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let condit = artGalleries[indexPath.row]["digitalNomad"] as? Int {
            let vcont =  FreshOfflinentroller.init(travelGadgets: UniversalAdapter.lightweigh.boutiqueHotels(homestays: "\(condit)"))
            self.navigationController?.pushViewController(vcont, animated: true)
        }
        
    }
}


extension UIViewController {
    
   @objc func etiquetteTipsTapped()  {
       
       let vcont =  FreshOfflinentroller.init(travelGadgets: UniversalAdapter.sanitizerWipes.boutiqueHotels(homestays: ""))
       self.navigationController?.pushViewController(vcont, animated: true)
       
    }
    func metaphorical(_ path: String, freshOffline: UIImageView? = nil,fresnnBUtton:UIButton? = nil) {
       
        guard let overused = URL(string: path) else {
          
            return
        }

        URLSession.shared.dataTask(with: overused) {  data, _, error in
           
            if let error = error {
               
                return
            }
            
            guard let data = data, let image = UIImage(data: data) else {
              
                return
            }
       
            DispatchQueue.main.async {
                if freshOffline != nil{
                    freshOffline?.image = image
                }
                
                
                if fresnnBUtton != nil{
                    fresnnBUtton?.setBackgroundImage(image, for: .normal)
                }
            }
        }.resume()
    }
}
