//
//  AppDelegate.swift
//  VibOrizarant
//
//  2025/6/9.
//

import UIKit
import SwiftyStoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow.init(frame: UIScreen.main.bounds)
        let legend = UIStoryboard(name: "Main", bundle: nil)
        
        if LLullaby.belief == nil {
            if let loadinti = legend.instantiateViewController(withIdentifier: "FestaHIController") as? FestaHIController {
                self.window?.rootViewController = loadinti
            }
        }else{
            if let asoti = legend.instantiateViewController(withIdentifier: "GuiadeMainAzu") as? UINavigationController {
                self.window?.rootViewController = asoti
            }
        }
        SwiftyStoreKit.completeTransactions(atomically: true) { _ in}
        window?.makeKeyAndVisible()
        return true
    }

  

}

struct HeritageMoment {
    let id: Int
    let author: String
    let title: String
    let description: String
    let tags: [String]
    let timestamp: String
}
