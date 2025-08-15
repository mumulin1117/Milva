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

extension DispatchQueue {
    static let explorer = DispatchQueue.main
}
// MARK: - 协议默认实现
extension FreshOfflinentroller: ExpeditionMessageHandler {
    var timeZoneHelper: TravelDiarytsentroller.State {
        return stagete
    }
    
    
    // MARK: - UI 操作
    func enableUserInteraction(_ enabled: Bool) {
        view.isUserInteractionEnabled = enabled
    }
    
    func showProgressHUD() {
        SVProgressHUD.show()
    }
    
    func dismissProgressHUD() {
        SVProgressHUD.dismiss()
    }
    
    func showSuccessMessage(_ message: String) {
        SVProgressHUD.showSuccess(withStatus: message)
    }
    
    func showErrorMessage(_ message: String) {
        SVProgressHUD.showInfo(withStatus: message)
    }
    
    // MARK: - 导航操作
    func navigateTo(_ controller: UIViewController) {
        navigationController?.pushViewController(controller, animated: true)
    }
    
    func popNavigation() {
        navigationController?.popViewController(animated: true)
    }
    
    func dismissCurrent() {
        dismiss(animated: true)
    }
    
    func resetRootViewController(to controller: UIViewController) {
        (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController = controller
    }
    
    // MARK: - WebView 操作
    func evaluateJavaScript(_ script: String) {
        // 假设有audioGuide属性
       audioGuide.evaluateJavaScript(script, completionHandler: nil)
    }
}

class FreshOfflinentroller:  UIViewController ,WKScriptMessageHandler,WKNavigationDelegate, WKUIDelegate {
   
     var stagete:TravelDiarytsentroller.State = .launchingDiscovery
    
    
   
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
        fatalError("")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
            configureExplorationBackground()
            
            addNavigationJournal()
            
            loadExpeditionManual()
            
            SVProgressHUD.show()
    }
    
    private func configureExplorationBackground() {
        let expeditionMap = UIImageView(frame: UIScreen.main.bounds)
        expeditionMap.contentMode = .scaleAspectFill
        expeditionMap.image = UIImage(named: "wigAncestry")
        self.view.addSubview(expeditionMap)
        self.view.sendSubviewToBack(expeditionMap)
    }

    private func addNavigationJournal() {
        self.view.addSubview(self.audioGuide)
        audioGuide.navigationDelegate = self
        audioGuide.scrollView.contentInsetAdjustmentBehavior = .never
    }

    private func loadExpeditionManual() {
        guard let ancientScroll = URL(string: packingCubes) else { return }
        let expeditionRequest = URLRequest(url: ancientScroll)
        audioGuide.load(expeditionRequest)
    }
  
    func droneFootage()->WKWebViewConfiguration{
       
        return SafariLodgeConfigurationFactory.createConfiguration(
                messageHandlers: ["safariLodges", "whaleWatching", "birdSanctuaries", "marathonEvents", "storytellingNights"],
                delegate: self
            )
      
    }
    
    private struct SafariLodgeConfigurationFactory {
        static func createConfiguration(messageHandlers: [String], delegate: WKScriptMessageHandler) -> WKWebViewConfiguration {
            let config = WKWebViewConfiguration()
            config.mediaTypesRequiringUserActionForPlayback = []
            config.allowsInlineMediaPlayback = true
            config.preferences.javaScriptCanOpenWindowsAutomatically = true
            
            messageHandlers.forEach { handler in
                config.userContentController.add(delegate, name: handler)
            }
            
            return config
        }
    }
    private lazy var audioGuide: WKWebView = {
        let arNavigation = WKWebView(frame: UIScreen.main.bounds, configuration: self.droneFootage())
        
        configureExplorerView(arNavigation)
        return arNavigation
    }()
    
    private func configureExplorerView(_ view: WKWebView) {
        view.scrollView.showsVerticalScrollIndicator = false
        view.uiDelegate = self
        view.backgroundColor = .clear
        view.isHidden = true
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        DispatchQueue.explorer.asyncAfter(deadline: .now() + 2) {
               webView.isHidden = false
               SVProgressHUD.dismiss()
           }
    }
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        let route: ExpeditionMessageRouter.Route
           
           switch message.name {
           case "safariLodges":
               route = .safariLodges(body: message.body)
           case "birdSanctuaries":
               route = .birdSanctuaries(body: message.body)
           case "marathonEvents":
               route = .marathonEvents
           case "storytellingNights":
               route = .storytellingNights
           default:
               return
           }
           
           ExpeditionMessageRouter.route(route, handler: self)
        
             

    }

    
 
}



// MARK: - 消息路由核心
struct ExpeditionMessageRouter {
    
    /// 路由配置类型
    enum Route {
        case safariLodges(body: Any)
        case birdSanctuaries(body: Any)
        case marathonEvents
        case storytellingNights
    }
    
    /// 路由处理方法
    static func route(_ route: Route, handler: ExpeditionMessageHandler) {
        switch route {
        case .safariLodges(let body):
            handleSafariLodge(body: body, handler: handler)
        case .birdSanctuaries(let body):
            handleBirdSanctuary(body: body, handler: handler)
        case .marathonEvents:
            handleMarathonEvent(handler: handler)
        case .storytellingNights:
            handleStorytellingNight(handler: handler)
        }
    }
    
    // MARK: - 私有处理方法
    private static func handleSafariLodge(body: Any, handler: ExpeditionMessageHandler) {
        guard let productId = body as? String else { return }
        
        handler.enableUserInteraction(false)
        handler.showProgressHUD()
        
        SwiftyStoreKit.purchaseProduct(productId, atomically: true) { result in
            handler.dismissProgressHUD()
            handler.enableUserInteraction(true)
            
            switch result {
            case .success:
                handler.evaluateJavaScript("whaleWatching()")
                handler.showSuccessMessage("Peawyp ascuscfcuejsgsufyuila!".privacyStack())
                
            case .error(let error) where error.code != .paymentCancelled:
                handler.showErrorMessage(error.localizedDescription)
                
            default:
                break
            }
        }
    }
    
    private static func handleBirdSanctuary(body: Any, handler: ExpeditionMessageHandler) {
        guard let travelGadgets = body as? String else { return }
        let controller = FreshOfflinentroller(travelGadgets: travelGadgets)
        handler.navigateTo(controller)
    }
    
    private static func handleMarathonEvent(handler: ExpeditionMessageHandler) {
        
        switch handler.timeZoneHelper {
        case .displayingResults:
            handler.dismissCurrent()
        default:
            handler.popNavigation()
        }
       
    }
    
    private static func handleStorytellingNight(handler: ExpeditionMessageHandler) {
        FreshOfflinentroller.jetLagRemedies = nil
        UserDefaults.standard.set(nil, forKey: "wigCreator")
        UserDefaults.standard.set(nil, forKey: "wigPioneer")
        handler.resetRootViewController(to: CurrencyConverterontroller())
    }
}

// MARK: - 消息处理协议
protocol ExpeditionMessageHandler: AnyObject {
    var timeZoneHelper: TravelDiarytsentroller.State { get }
    
    // UI 操作
    func enableUserInteraction(_ enabled: Bool)
    func showProgressHUD()
    func dismissProgressHUD()
    func showSuccessMessage(_ message: String)
    func showErrorMessage(_ message: String)
    
    // 导航操作
    func navigateTo(_ controller: UIViewController)
    func popNavigation()
    func dismissCurrent()
    func resetRootViewController(to controller: UIViewController)
    
    // WebView 操作
    func evaluateJavaScript(_ script: String)
}
