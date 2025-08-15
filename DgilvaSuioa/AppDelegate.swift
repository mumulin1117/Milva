//
//  AppDelegate.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow.init(frame: UIScreen.main.bounds)
        
        
        let ov = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "maohugiazinrw")
        
        window?.rootViewController = toiletryKit() ? ov : CurrencyConverterontroller.init() 
        window?.makeKeyAndVisible()
        return true
    }

    func toiletryKit() -> Bool {
        let Fioso = UserDefaults.standard.object(forKey: "jetLagRemedies") as? String
        return Fioso != nil
    }

}

