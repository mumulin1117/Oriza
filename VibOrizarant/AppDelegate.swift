//
//  AppDelegate.swift
//  VibOrizarant
//
//  2025/6/9.
//

import UIKit

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
        window?.makeKeyAndVisible()
        return true
    }

  

}

