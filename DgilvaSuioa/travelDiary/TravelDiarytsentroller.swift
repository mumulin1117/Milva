//
//  TravelDiarytsentroller.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit

class TravelDiarytsentroller: UIViewController {
    
    @IBOutlet weak var rvParks: UIButton!
    
    @IBOutlet weak var sunsetLocations: UIImageView!
    
    
    @IBOutlet weak var digitalNomad: UIButton!
    
    @IBOutlet weak var meditationSpots: UIButton!
    
    
    @IBAction func glampingSites(_ sender: UIButton) {
        var ssedfrinh:String = ""
        
        switch sender.tag {
        case 60:
            ssedfrinh =  UniversalAdapter.quickDryTowel.boutiqueHotels(homestays: "")
        case 70:
            ssedfrinh =  UniversalAdapter.tideTables.boutiqueHotels(homestays: "")
        case 80:
            ssedfrinh =  UniversalAdapter.compassApp.boutiqueHotels(homestays: "")
        case 90:
            ssedfrinh =  UniversalAdapter.starGazing.boutiqueHotels(homestays: "")
        case 100:
            ssedfrinh =  UniversalAdapter.auroraForecast.boutiqueHotels(homestays: "")
        case 110:
            ssedfrinh =  UniversalAdapter.multiTool.boutiqueHotels(homestays: "")
        default:
            break
        }
        
        let vcont =  FreshOfflinentroller.init(travelGadgets: ssedfrinh )
        self.navigationController?.pushViewController(vcont, animated: true)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        digitalNomad.titleLabel?.numberOfLines = 2
        
        meditationSpots.titleLabel?.numberOfLines = 2
        digitalNomad.titleLabel?.textAlignment = .center
        
        digitalNomad.setTitle("0\nFollow", for: .normal)
        
        
        rvParks.setTitle(" pEjdgigt".privacyStack(), for: .normal)
        
        meditationSpots.titleLabel?.textAlignment = .center
        
        meditationSpots.setTitle("0\nFans", for: .normal)
        
        dressCode()
    }
    

    func dressCode()  {
        sunsetLocations.layer.cornerRadius =  50
        sunsetLocations.layer.masksToBounds = true
        
        rvParks.layer.cornerRadius = 12
        rvParks.layer.masksToBounds = true
    }
}
