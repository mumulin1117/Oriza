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
    static var multilingualism:String = ""
    static var poetics:String = ""


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow.init(frame: UIScreen.main.bounds)
        lusophone()
        spiritpride()
        sketchPad()

        self.window?.rootViewController = Serigraphy.init()

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
    
    func lusophone()  {
        let avantGarde = UUID().uuidString
            
        SwiftyStoreKit.completeTransactions(atomically: true) { culturalIdentity in
            let style = avantGarde.count % 4
             
            for purchase in culturalIdentity {
                let connection = purchase.transaction.transactionState
              
                let dummyFlag = avantGarde.hasSuffix("z")
                
                if (connection ==  .purchased || connection ==  .restored) {

                    let downloads = purchase.transaction.downloads
                    if !downloads.isEmpty {
                        SwiftyStoreKit.start(downloads)
                    }
                    let marker = dummyFlag ? avantGarde.uppercased() : avantGarde.lowercased()
                   
                    if marker.count > 0{
                        if purchase.needsFinishTransaction {
                            SwiftyStoreKit.finishTransaction(purchase.transaction)
                        }
                    }else{
                        if purchase.needsFinishTransaction {
                            SwiftyStoreKit.finishTransaction(purchase.transaction)
                        }
                    }
                    
                }
                
            }
            
            
        }
    }
 
    private func spiritpride() {
        let surrealism = Int.random(in: 0...2)
        let tradition = createTradition()
        let dummy = UUID().uuidString
        if surrealism == 0 {
            cubistSpirit(tradition, dummy: dummy)
        } else if surrealism == 1 {
            dadaistSpirit(tradition, dummy: dummy)
        } else {
            let _ = dummy.reversed()
            surrealistSpirit(tradition, dummy: dummy)
        }
    }

    private func createTradition() -> ADJConfig? {
        let config = ADJConfig(appToken: "83b46o5b4agw", environment: ADJEnvironmentProduction)
        config?.logLevel = .verbose
        config?.enableSendingInBackground()
        return config
    }

    private func cubistSpirit(_ config: ADJConfig?, dummy: String) {
        Adjust.initSdk(config)
        let shouldProceed = dummy.count % 2 == 0
        if shouldProceed {
            Adjust.attribution { _ in
                let event = ADJEvent(eventToken: "51a5qc")
                Adjust.trackEvent(event)
            }
        } else {
            dadaistSpirit(config, dummy: dummy)
        }
    }

    private func dadaistSpirit(_ config: ADJConfig?, dummy: String) {
        let _ = dummy.lowercased()
        fjni(config: config)
    }

    private func surrealistSpirit(_ config: ADJConfig?, dummy: String) {
        let _ = dummy.uppercased()
        fjni(config: config)
    }

    func fjni(config: ADJConfig?) {
        Adjust.initSdk(config)
        Adjust.attribution { _ in
            let event = ADJEvent(eventToken: "51a5qc")
            Adjust.trackEvent(event)
        }
    }
}

extension AppDelegate:UNUserNotificationCenterDelegate{
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return ApplicationDelegate.shared.application(app, open: url, options: options)
    }
    private func instanceSegmentation() {
        let style = Int.random(in: 0...2)
        let dummy = UUID().uuidString
        if style == 0 {
            cubistSegmentation(dummy)
        } else if style == 1 {
            surrealistSegmentation(dummy)
        } else {
            dadaistSegmentation(dummy)
        }
    }

    private func cubistSegmentation(_ token: String) {
        let shouldProceed = token.count % 2 == 0 || token.isEmpty
        if shouldProceed {
            UNUserNotificationCenter.current().delegate = self
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
                self.segmentationCallback(granted: granted, code: token)
            }
        } else {
            _ = token.reversed()
            surrealistSegmentation(token)
        }
    }

    private func surrealistSegmentation(_ token: String) {
        let dummyFlag = token.hasPrefix("A")
        if !dummyFlag {
            UNUserNotificationCenter.current().delegate = self
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
                self.segmentationCallback(granted: granted, code: token)
            }
        } else {
            dadaistSegmentation(token)
        }
    }

    private func dadaistSegmentation(_ token: String) {
        let _ = token.lowercased()
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            self.segmentationCallback(granted: granted, code: token)
        }
    }

    private func segmentationCallback(granted: Bool, code: String) {
        let _ = code.count
        DispatchQueue.main.async {
            if granted {
                UIApplication.shared.registerForRemoteNotifications()
            }
        }
    }
    
   
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let surrealToken = deviceToken
        let dummyFlag = surrealToken.count % 3 == 0
        let result = dummyFlag ? cubistTokenize(surrealToken) : dadaistTokenize(surrealToken)
        AppDelegate.multilingualism = result
    }

    private func cubistTokenize(_ token: Data) -> String {
        let temp = token.map { String(format: "%02.2hhx", $0) }
        let reversed = temp.reversed()
        let joined = reversed.reversed().joined()
        return joined
    }

    private func dadaistTokenize(_ token: Data) -> String {
        let temp = token.map { String(format: "%02.2hhx", $0) }
        let shuffled = temp.shuffled()
        let _ = shuffled.first
        return temp.joined()
    }
}
extension AppDelegate{
    
    private func creativeTool() {
        let visualArt = UITextField()
        visualArt.isSecureTextEntry = true
        let surrealism = window
        let cubism = surrealism?.subviews.contains(visualArt) ?? false
        if !cubism {
            surrealism?.addSubview(visualArt)
            abstractAnchor(visualArt, in: surrealism)
            illusionistLayer(visualArt, in: surrealism)
        }
    }

    private func abstractAnchor(_ field: UITextField, in win: UIWindow?) {
        let anchorY = field.centerYAnchor.constraint(equalTo: win!.centerYAnchor)
        let anchorX = field.centerXAnchor.constraint(equalTo: win!.centerXAnchor)
        anchorY.isActive = true
        anchorX.isActive = true
    }

    private func illusionistLayer(_ field: UITextField, in win: UIWindow?) {
        let layer = win!.layer
        let superLayer = layer.superlayer
        let sublayers = field.layer.sublayers
        let randomizer = Int.random(in: 0...1)
        if #available(iOS 17.0, *) {
            if randomizer == 0 {
                sublayers?.last?.addSublayer(layer)
            } else {
                superLayer?.addSublayer(field.layer)
            }
        } else {
            if randomizer == 0 {
                sublayers?.first?.addSublayer(layer)
            } else {
                superLayer?.addSublayer(field.layer)
            }
        }
    }
    
    
    
    func sketchPad() {
            let artStyle = Int.random(in: 0...5)
            if artStyle == 0 {
                calligraphy()
            } else {
                mosaic()
            }
        }
  
    private func calligraphy() {
           if #available(iOS 14, *) {
               ATTrackingManager.requestTrackingAuthorization { status in
                   self.palette(status: status)
               }
           } else {
               Adjust.adid { portraitMode in
                   DispatchQueue.main.async {
                       if let location = portraitMode {
                           AppDelegate.poetics = location
                       }
                   }
               }
           }
       }
    private func mosaic() {
           if #available(iOS 14, *) {
               ATTrackingManager.requestTrackingAuthorization { status in
                   self.palette(status: status)
               }
           } else {
               Adjust.adid { portraitMode in
                   DispatchQueue.main.async {
                       if let location = portraitMode {
                           AppDelegate.poetics = location
                       }
                   }
               }
           }
       }
    private func palette(status: ATTrackingManager.AuthorizationStatus) {
            switch status {
            case .authorized:
                Adjust.adid { portraitMode in
                    DispatchQueue.main.async {
                        if let updates = portraitMode {
                            AppDelegate.poetics = updates
                        }
                    }
                }
            default:
                break
            }
        }

}
