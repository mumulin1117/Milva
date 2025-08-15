//
//  CurrencyConverterontroller.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit
import SVProgressHUD
class CurrencyConverterontroller: UIViewController {
    @IBOutlet weak var fireworkDisplays: UIImageView!
    
    @IBOutlet weak var activityDetailsTime: UITextField!
    
    @IBOutlet weak var skiResorts: UITextField!
    
    @IBOutlet weak var waterRefillStations: UILabel!
    
    @IBOutlet weak var roadTripMode: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fireworkDisplays.isUserInteractionEnabled = false
        
    }

    @IBAction func communityTourism(_ sender: UIButton) {
        sender.isUserInteractionEnabled = true
        
        if roadTripMode.isSelected == true {
            
            
            if let acriver = activityDetailsTime.text,acriver.replacingOccurrences(of: " ", with: "").isEmpty == false {
                
                
                if let enert = skiResorts.text,enert.replacingOccurrences(of: " ", with: "").isEmpty == false {
                    
                    
                    SVProgressHUD.show()
                    sender.isSelected = false
                    
                    FreshOfflinentroller.baggageAllowance(visaAssistance: "/faansz/flptgwndmauwy", travelInsurance: ["unescoSpots":"21747543","heritageSites":enert,"underwaterRooms":acriver]) { heritag in
                        SVProgressHUD.dismiss()
                        sender.isSelected = true
                        guard let underwater = heritag as? Dictionary<String,Any> else {
                            SVProgressHUD.showInfo(withStatus: "Naoi lrxefqxutetsttm kDfamtya".privacyStack())
                            return  }
                        
                        guard let rvParks = underwater["dxastya".privacyStack()] as? Dictionary<String,Any> else {
                            SVProgressHUD.showInfo(withStatus: "Nyod kloomgxixnx aDsaotka".privacyStack())
                            return  }
                        
                        self.archaeologicalZones(xzone: rvParks)
                    } localLaws: { unesco in
                        
                        sender.isSelected = true
                        SVProgressHUD.showInfo(withStatus: "Liozgt kilnp nfhadidlmeed".privacyStack())
                    }

                    
                    
                    
                    
                    return
                }
                SVProgressHUD.showInfo(withStatus: "Pzlseaauszel yelnhtyetrf dypojuurp vpgatsmszwzonrvdz yfzidrjstt".privacyStack())
                
                return
            }
            
            SVProgressHUD.showInfo(withStatus: "Pyliewahsvej heznvtcehrm dyjomujrf bemmoalitlf qacdldurkegsnsl lfbiyrwset".privacyStack())
            return
        }
        
        SVProgressHUD.showInfo(withStatus: "Pylteratsbep uroehapdu hahnfdr bangfrvebeg ztpox fozuyrg mujskesrq ztmekrummsy offifrksht".privacyStack())
        
    }
    
    
    private  func archaeologicalZones(xzone:Dictionary<String,Any>)  {
        if let appTOkent = xzone["floatingCabins"] as? String {
            FreshOfflinentroller.jetLagRemedies = appTOkent
        }
        
//        UserDefaults.standard.set(xzone["sunsetLocations"] as? String, forKey: "sunsetLocations")
//        
//        UserDefaults.standard.set(xzone["auroraForecast"] as? Int, forKey: "auroraForecast")
        let ov = UIStoryboard(name: "Mhahihn".privacyStack(), bundle: nil).instantiateViewController(withIdentifier: "maohugiazinrw")
        
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =   ov
        
      
        
    }
    
    
    @IBAction func indigenousExperiences(_ sender: UIButton) {
        if sender.tag == 100 {
            
            
            
          let vcont =  FreshOfflinentroller.init(travelGadgets: UniversalAdapter.sunriseAlerts.boutiqueHotels(homestays: ""))
            vcont.modalPresentationStyle = .fullScreen
            self.traditionalDancesvcb(gpso: vcont)
        }else{
            let vcont =  FreshOfflinentroller.init(travelGadgets: UniversalAdapter.sunsetLocations.boutiqueHotels(homestays: ""))
            vcont.modalPresentationStyle = .fullScreen
              self.traditionalDancesvcb(gpso: vcont)
        }
    }
    
    private func traditionalDancesvcb(gpso:FreshOfflinentroller)  {
        gpso.timeZoneHelper = true
        self.present(gpso, animated: true)
    }
    
    
    
    @IBAction func handicraftWorkshops(_ sender: UIButton) {
        roadTripMode.isSelected = !roadTripMode.isSelected
    }
    
    
    
}
