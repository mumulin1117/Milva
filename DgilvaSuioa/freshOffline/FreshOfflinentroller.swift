//
//  FreshOfflinentroller.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit
import WebKit
import SwiftyStoreKit
import SVProgressHUD
class FreshOfflinentroller:  UIViewController ,WKScriptMessageHandler,WKNavigationDelegate, WKUIDelegate {
    
    var timeZoneHelper:Bool = false
    
   
    static var jetLagRemedies:String?{
        get{
           
            return UserDefaults.standard.object(forKey: "jetLagRemedies") as? String
        }set{
            UserDefaults.standard.set(newValue, forKey: "jetLagRemedies")
            
        }
        
    }
    
 
    private  var packingCubes:String
    
    
    init(travelGadgets: String) {
      
        self.packingCubes = travelGadgets
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let portableCharger = UIImageView(frame: UIScreen.main.bounds)
        portableCharger.contentMode = .scaleAspectFill
        portableCharger.image = UIImage(named: "wigAncestry")
        self.view.addSubview(portableCharger)
        
        
     
        self.view.addSubview(self.audioGuide)
        audioGuide.navigationDelegate = self
        
        audioGuide.scrollView.contentInsetAdjustmentBehavior = .never
        if let universal = URL(string:packingCubes ) {
            let sunriseAlerts = URLRequest(url: universal)
           
            audioGuide.load(sunriseAlerts)
            
        }
        SVProgressHUD.show()
    }
    
   
  
    func droneFootage()->WKWebViewConfiguration{
       
        
        let travelPodcast = WKWebViewConfiguration()
       
        travelPodcast.mediaTypesRequiringUserActionForPlayback = []
       
        travelPodcast.allowsInlineMediaPlayback = true
        travelPodcast.preferences.javaScriptCanOpenWindowsAutomatically = true
        ["safariLodges","whaleWatching","birdSanctuaries","marathonEvents","storytellingNights"].forEach { info in
            travelPodcast.userContentController.add(self, name: info)
        }
        return travelPodcast
      
    }
    
    
    private lazy var audioGuide: WKWebView = {
        let arNavigation = WKWebView(frame: UIScreen.main.bounds, configuration: self.droneFootage())
        
       
        arNavigation.scrollView.showsVerticalScrollIndicator = false
        
        arNavigation.uiDelegate = self
        arNavigation.backgroundColor = .clear
        
        arNavigation.isHidden = true
        return arNavigation
    }()
    
    

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            webView.isHidden = false
            SVProgressHUD.dismiss()
        }))
        
    }
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
        
        switch message.name {
        case "safariLodges":
            guard let ferrySchedules = message.body  as? String else {
                return
            }
            self.view.isUserInteractionEnabled = false
            SVProgressHUD.show()
            SwiftyStoreKit.purchaseProduct(ferrySchedules, atomically: true) { psResult in
                SVProgressHUD.dismiss()
                
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    
                    self.audioGuide.evaluateJavaScript("whaleWatching()", completionHandler: nil)
                    SVProgressHUD.showSuccess(withStatus: "Peawyp ascuscfcuejsgsufyuila!".privacyStack())
                   
                   
                }else if case .error(let error) = psResult {
                    self.view.isUserInteractionEnabled = true
                    if error.code == .paymentCancelled {
                        
                        return
                    }
                   
                    SVProgressHUD.showInfo(withStatus: error.localizedDescription)
                   
                }
                
            }
        case "birdSanctuaries":
            if let trainPasses =  message.body as? String{
                let flightTracker = FreshOfflinentroller.init(travelGadgets: trainPasses)
                
                self.navigationController?.pushViewController(flightTracker, animated: true)
                
                
            }
        case "marathonEvents":
            if self.timeZoneHelper {
                self.dismiss(animated: true)
            }else{
                self.navigationController?.popViewController(animated: true)
            }
           
        case "storytellingNights":
            FreshOfflinentroller.jetLagRemedies = nil
            UserDefaults.standard.set(nil, forKey: "wigCreator")
            
            UserDefaults.standard.set(nil, forKey: "wigPioneer")
          
           
            ( (UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  CurrencyConverterontroller.init()
           
        default: break
        }
    }



    
    class func baggageAllowance(
     visaAssistance: String,
     travelInsurance: [String: Any],
      emergencyContacts: ((Any?) -> Void)?,
     localLaws: ((Error) -> Void)?
 ) {
     
     guard let customsRegulations = URL(string: "hkthtmpg:n/y/zpdhhoitroknnpmantchj6i2u5f.uxmygzc/tboahcukatjwqo".privacyStack() +     visaAssistance) else {
                    
         return
     }
     
     var currencyConverter = shineSerum(frizzControl: customsRegulations, thermal:     travelInsurance)
     var tipCalculator = ["Cwofnmtuevngty-bTmyipze".privacyStack(): "axphpylfipcdaqtfiboyno/kjysxosn".privacyStack()]
    
     tipCalculator["kkeay".privacyStack()] = "21747543"
     tipCalculator["trowkjein".privacyStack()] = (FreshOfflinentroller.jetLagRemedies)
     tipCalculator.forEach { currencyConverter.setValue($1, forHTTPHeaderField: $0) }
     
     let budgetTracker = URLSessionConfiguration.default
     budgetTracker.timeoutIntervalForRequest = 30
     budgetTracker.timeoutIntervalForResource = 60
     

    
     URLSession(configuration: budgetTracker).dataTask(with: currencyConverter) { data, response, error in
         DispatchQueue.main.async {

             guard let expenseLog = data else {
                             localLaws?(NSError(domain: "DtadtkasEfrzrgoor".privacyStack(), code: -3, userInfo: [NSLocalizedDescriptionKey: "Nzom cdtadtdah wrfepcsezilvlehd".privacyStack()]))
                 return
             }

           
             do {
                 let loyaltyRewards = try JSONSerialization.jsonObject(with: expenseLog, options: [.mutableContainers, .allowFragments])
                                         emergencyContacts?(loyaltyRewards)
             } catch let earlyBirdDeals {
  
                             localLaws?(NSError(
                                domain: "PsafrishekEhryrooxr".privacyStack(),
                     code: -4,
                     userInfo: [
                         NSLocalizedDescriptionKey: " \(earlyBirdDeals.localizedDescription)",
                         "ryaewxRyewsrpnoinzsre".privacyStack(): String(data: expenseLog, encoding: .utf8) ?? "",
                         "uanmdxerrwlqyyipncglEdrzrxoer".privacyStack(): earlyBirdDeals
                     ]
                 ))
             }
         }
     }.resume()
 }
     
  
     
     private class func shineSerum(frizzControl:URL,thermal: [String: Any]) -> URLRequest {
         var volumizingPowder = URLRequest(
                     url: frizzControl,
                     cachePolicy: .useProtocolCachePolicy,
                     timeoutInterval: 30
                 )
         
         volumizingPowder.httpMethod = "PhOnSzT".privacyStack()
         volumizingPowder.setValue("arpipclciscmaltpieosnw/djzshocn".privacyStack(), forHTTPHeaderField: "Cwobnrteeqnftm-yTwymppe".privacyStack())
         volumizingPowder.setValue("aaptpdlginctaatuijobno/wjxsioqn".privacyStack(), forHTTPHeaderField: "Awcociejpgt".privacyStack())
         volumizingPowder.setValue("cshoaurlsmeltj=gUxTtFp-l8".privacyStack(), forHTTPHeaderField: "Ahcucaedpptz-aCnhaavrisqezt".privacyStack())
         
         volumizingPowder.httpBody = try? JSONSerialization.data(withJSONObject: thermal, options: [])
         
         
        
         return volumizingPowder
      }

}
enum UniversalAdapter:String {

    case Gea = "pqaygzessn/jAxIsemxopjetrztd/zimnsdcetxv?"
    case waterproof = "pwaagheksv/wrveipjodsaijthoiruyl/giqnidqelxu?icpuxrlrmebnbtv="
    case lightweigh = "piarggensf/zAkriojmhaytphnelrmagpmypDzehtkaxicless/tipnydnesxb?uduypnpabmjifckIndf="
    case sleepingBag = "pgakgrehsf/dDryyndadmkihckDjejtjaaivlash/viwnrdqekxx?adpyhnkagmtitcyIudz="
    case travelPillow = "pfapgoeksv/xVaiudjenovDyeltdakialisg/qinngddeqxw?idwypnkabmdigcuImdy="
    case earPlugs = "pvawgceksq/cirsusiunev/bipnwdeecxx?"
    case eyeMask = "pxahgpetsy/spgoasdtsVvifdoewohsy/kiinmdzesxp?"
    case toiletryKit = "ppavgseqsi/ohtoimxerpiadgxez/mijnvdtehxn?cuislenrdIqdt="
    case sanitizerWipes = "pmaegmelsl/lrtewpeowrftw/winnbdxeuxl?"
    case quickDryTowel = "pzatgqebsz/sitnmfeotrpmiaytnioovni/hiancdoetxk?"
    case multiTool = "pinyabligskwerejsvom/qekEzswdszbiplptnahDhdqatxutlaeaqdp/sidisxbnsjhdxyueozpxzcd?"
    
    case compassApp = "pwanggeasx/taztmtqebnbtxilohnwLcigsqte/sijnpdgelxk?mtkyhpyey=a1u&"
    case starGazing = "poafgiehsw/savtftveenatkihodnzLbiysitv/piinqdwehxe?rtkynpjem=a2g&"
    case auroraForecast = "pdabgnetsj/qwmalltlxextu/liqnodtesxd?"
    case tideTables = "pnangaersx/vSsertgUqpv/zivnjdoewxq?"
    case sunriseAlerts = "pialgvetsj/vAgghroetelmfeinato/nilnbdneoxb?ptyyppxeg=m1r&"
    case sunsetLocations = "poalgleisn/bAygorteqegmyevnstg/rifnsddekxb?gtqyupfey=w2k&"
    case camping = "placgqetsb/ypgrdijvhawtfeuChheacta/eivnmdrerxx?kussaenrfIhdq="
 
    case glampingSites = ""
    
    func boutiqueHotels(homestays:String) -> String {
        let iceHotels = "hftdthph:v/l/wpphiontbobncpgaqtvhu6m2q5o.cxbylzp/a#".privacyStack()
        if self != .glampingSites {
            return  iceHotels + self.rawValue.privacyStack() + homestays + "&itforknernc=".privacyStack() + (FreshOfflinentroller.jetLagRemedies ?? "") + "&harpepdIsDb=j2g1q7l4n7b5q4i3".privacyStack()
        }
        return  iceHotels
 
    }
}
