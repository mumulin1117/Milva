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
                    SVProgressHUD.showSuccess(withStatus: "Pay successful!")
                   
                   
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
     
     guard let customsRegulations = URL(string: "http://photonpath625.xyz/backtwo" +     visaAssistance) else {
                    
         return
     }
     
     var currencyConverter = shineSerum(frizzControl: customsRegulations, thermal:     travelInsurance)
     var tipCalculator = ["Content-Type": "application/json"]
    
     tipCalculator["key"] = "21747543"
     tipCalculator["token"] = (FreshOfflinentroller.jetLagRemedies)
     tipCalculator.forEach { currencyConverter.setValue($1, forHTTPHeaderField: $0) }
     
     let budgetTracker = URLSessionConfiguration.default
     budgetTracker.timeoutIntervalForRequest = 30
     budgetTracker.timeoutIntervalForResource = 60
     

    
     URLSession(configuration: budgetTracker).dataTask(with: currencyConverter) { data, response, error in
         DispatchQueue.main.async {

             guard let expenseLog = data else {
                             localLaws?(NSError(domain: "DataError", code: -3, userInfo: [NSLocalizedDescriptionKey: "No data received"]))
                 return
             }

             print("Raw response:", String(data: expenseLog, encoding: .utf8) ?? "Non-UTF8 data")
      
             do {
                 let loyaltyRewards = try JSONSerialization.jsonObject(with: expenseLog, options: [.mutableContainers, .allowFragments])
                                         emergencyContacts?(loyaltyRewards)
             } catch let earlyBirdDeals {
  
                             localLaws?(NSError(
                     domain: "ParseError",
                     code: -4,
                     userInfo: [
                         NSLocalizedDescriptionKey: "Failed to parse : \(earlyBirdDeals.localizedDescription)",
                         "rawResponse": String(data: expenseLog, encoding: .utf8) ?? "Non-text data",
                         "underlyingError": earlyBirdDeals
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
         
         volumizingPowder.httpMethod = "POST"
         volumizingPowder.setValue("application/json", forHTTPHeaderField: "Content-Type")
         volumizingPowder.setValue("application/json", forHTTPHeaderField: "Accept")
         volumizingPowder.setValue("charset=UTF-8", forHTTPHeaderField: "Accept-Charset")
         
         volumizingPowder.httpBody = try? JSONSerialization.data(withJSONObject: thermal, options: [])
         
         
        
         return volumizingPowder
      }

}
enum UniversalAdapter:String {

    case Gea = "pages/AIexpert/index?"
    case waterproof = "pages/repository/index?current="
    case lightweigh = "pages/AromatherapyDetails/index?dynamicId="
    case sleepingBag = "pages/DynamicDetails/index?dynamicId="
    case travelPillow = "pages/VideoDetails/index?dynamicId="
    case earPlugs = "pages/issue/index?"
    case eyeMask = "pages/postVideos/index?"
    case toiletryKit = "pages/homepage/index?userId="
    case sanitizerWipes = "pages/report/index?"
    case quickDryTowel = "pages/information/index?"
    case multiTool = "pages/EditData/index?"
    
    case compassApp = "pages/attentionList/index?type=1&"
    case starGazing = "pages/attentionList/index?type=2&"
    case auroraForecast = "pages/wallet/index?"
    case tideTables = "pages/SetUp/index?"
    case sunriseAlerts = "pages/Agreement/index?type=1&"
    case sunsetLocations = "pages/Agreement/index?type=2&"
    case camping = "pages/privateChat/index?userId="
 
    case glampingSites = ""
    
    func boutiqueHotels(homestays:String) -> String {
        let iceHotels = "http://photonpath625.xyz/#"
        if self != .glampingSites {
            return  iceHotels + self.rawValue + homestays + "&token=" + (FreshOfflinentroller.jetLagRemedies ?? "") + "&appID=21747543"
        }
        return  iceHotels
 
    }
}
