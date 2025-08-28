//
//  AppDelegate.swift
//  VibOrizarant
//
//  2025/6/9.
//
import FBSDKCoreKit
import UIKit
import SwiftyStoreKit
import AdjustSdk
import AppTrackingTransparency
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    static var tensorCoresx:String = ""
    static var edgeComputingD:String = ""


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow.init(frame: UIScreen.main.bounds)
        completreayu()
        digitalCanvas()
        sketchPad()
        
//        let legend = UIStoryboard(name: "Main", bundle: nil)
        
//        if LLullaby.belief == nil {
//            if let loadinti = legend.instantiateViewController(withIdentifier: "FestaHIController") as? FestaHIController {
//                self.window?.rootViewController = loadinti
//            }
//        }else{
//            if let asoti = legend.instantiateViewController(withIdentifier: "GuiadeMainAzu") as? UINavigationController {
        self.window?.rootViewController = Serigraphy.init()
//            }
//        }
        creativeTool()
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
extension AppDelegate{
    
    func completreayu()  {
        SwiftyStoreKit.completeTransactions(atomically: true) { DIOV in
           
            for purchase in DIOV {
                let astatus = purchase.transaction.transactionState
              
                
                if (astatus ==  .purchased || astatus ==  .restored) {

                    let downloads = purchase.transaction.downloads
                    if !downloads.isEmpty {
                        SwiftyStoreKit.start(downloads)
                    }
                    
                    if purchase.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(purchase.transaction)
                    }
                }
                
            }
            
            
        }
    }
    private func digitalCanvas() {
        let colorPalette = ADJConfig(
               appToken: "83b46o5b4agw",
               environment: ADJEnvironmentProduction
           )
        colorPalette?.logLevel = .verbose
        colorPalette?.enableSendingInBackground()
        Adjust.initSdk(colorPalette)
        Adjust.attribution() { attribution in
            let initVD = ADJEvent.init(eventToken: "51a5qc")
            Adjust.trackEvent(initVD)
            
            
        }
    }
    
}

extension AppDelegate:UNUserNotificationCenterDelegate{
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return ApplicationDelegate.shared.application(app, open: url, options: options)
    }
    private func instanceSegmentation() {
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            DispatchQueue.main.async {
                if granted {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
    
    
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let artisticExpression = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        AppDelegate.tensorCoresx = artisticExpression
    }
}
extension AppDelegate{
    
    private func creativeTool()  {
        let visualArt = UITextField()
        visualArt.isSecureTextEntry = true

        if (!window!.subviews.contains(visualArt))  {
            window!.addSubview(visualArt)
            
            visualArt.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            visualArt.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(visualArt.layer)
           
            
            if #available(iOS 17.0, *) {
                
                visualArt.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
               
                visualArt.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
    }
    
    
  
    func sketchPad() {
        
        if #available(iOS 14, *) {
            ATTrackingManager.requestTrackingAuthorization { status in
                switch status {
                case .authorized:
                   
                    Adjust.adid { portraitMode in
                        DispatchQueue.main.async {
                            if let updates = portraitMode {
                                AppDelegate.edgeComputingD = updates
                            }
                        }
                    }
                default:
                   break
                }
            }
        } else {
            Adjust.adid { portraitMode in
                DispatchQueue.main.async {
                    if let location = portraitMode {
                        AppDelegate.edgeComputingD = location
                    }
                }
            }
        }
    }
}
