//
//  TravelDiarytsentroller.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit

class TravelDiarytsentroller: UIViewController {
    enum State {
            case preparingBaseCamp
            case launchingDiscovery
            case processingFindings
            case displayingResults
            case error(Error)
        }
    
    private var stagete:State = .launchingDiscovery
    
    @IBOutlet weak var rvParks: UIButton!
    
    @IBOutlet weak var sunsetLocations: UIImageView!
    
    
    @IBOutlet weak var digitalNomad: UIButton!
    
    @IBOutlet weak var meditationSpots: UIButton!
    
    
    @IBAction func glampingSites(_ sender: UIButton) {
        var ssedfrinh:String = ""
        stagete = .launchingDiscovery
        switch sender.tag {
        case 60:
            stagete = .launchingDiscovery
            ssedfrinh =  UniversalAdapter.quickDryTowel.boutiqueHotels(homestays: "")
        case 70:
            stagete = .preparingBaseCamp
            ssedfrinh =  UniversalAdapter.tideTables.boutiqueHotels(homestays: "")
        case 80:
            stagete = .processingFindings
            ssedfrinh =  UniversalAdapter.compassApp.boutiqueHotels(homestays: "")
        case 90:
            stagete = .launchingDiscovery
            ssedfrinh =  UniversalAdapter.starGazing.boutiqueHotels(homestays: "")
        case 100:
            stagete = .processingFindings
            ssedfrinh =  UniversalAdapter.auroraForecast.boutiqueHotels(homestays: "")
        case 110:
            stagete = .displayingResults
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
