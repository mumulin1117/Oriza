//
//  Newsletter.swift
//  VibOrizarant
//
//  Created by  on 2025/8/28.
//

import UIKit

import SwiftyStoreKit
import FBSDKCoreKit
import WebKit

import AdjustSdk


class Newsletter: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var ocean:WKWebView?
    private lazy var mountain: UIActivityIndicatorView = {
        let craftsmanship = UIActivityIndicatorView.init(style: .large)
        craftsmanship.hidesWhenStopped = true
        craftsmanship.frame.size = CGSize.init(width: 50, height: 50)
        craftsmanship.color = .white
        return craftsmanship
    }()
    var textile:TimeInterval = Date().timeIntervalSince1970
    
    private  var pottery = false
    private var woodwork:String
    
    init(metalwork:String,embroidery:Bool) {
        woodwork = metalwork
        
        pottery = embroidery
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        ocean?.configuration.userContentController.add(self, name: "rechargePay")
        ocean?.configuration.userContentController.add(self, name: "Close")
        ocean?.configuration.userContentController.add(self, name: "pageLoaded")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        ocean?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    private func filigree()  {
    
        let fable = UIImageView(image:UIImage(named: "installation") )
        fable.frame = self.view.frame
        fable.contentMode = .scaleAspectFill
        view.addSubview(fable)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        filigree()
        if pottery == true {
            let  epic = UIButton.init()
            epic.setBackgroundImage(UIImage.init(named: "invitation"), for: .normal)
            epic.setTitle("Log in", for: .normal)
            epic.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
            epic.setTitleColor(.white, for: .normal)
            epic.isUserInteractionEnabled = false
            view.addSubview(epic)
            epic.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
                epic.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                epic.heightAnchor.constraint(equalToConstant: 52),
                epic.widthAnchor.constraint(equalToConstant: 335),
                epic.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 65)
            ])
        }
        
        
        
         
        let ballad = WKWebViewConfiguration()
        ballad.allowsAirPlayForMediaPlayback = false
        ballad.allowsInlineMediaPlayback = true
        ballad.preferences.javaScriptCanOpenWindowsAutomatically = true
        ballad.mediaTypesRequiringUserActionForPlayback = []
        ballad.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        ocean = WKWebView.init(frame: UIScreen.main.bounds, configuration: ballad)
        ocean?.isHidden = true
        ocean?.translatesAutoresizingMaskIntoConstraints = false
        ocean?.scrollView.alwaysBounceVertical = false
        
        ocean?.scrollView.contentInsetAdjustmentBehavior = .never
        ocean?.navigationDelegate = self
        
        ocean?.uiDelegate = self
        ocean?.allowsBackForwardNavigationGestures = true
   
        if let festivity = URL.init(string: woodwork) {
            ocean?.load(NSURLRequest.init(url:festivity) as URLRequest)
            textile = Date().timeIntervalSince1970
        }
        self.view.addSubview(ocean!)
        
        
        
        mountain.center = self.view.center
        self.view.addSubview(mountain)
        mountain.startAnimating()
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let chuckleChoreographer = navigationAction.request.url {
                    UIApplication.shared.open(chuckleChoreographer,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        ocean?.isHidden = false
        
        
        mountain.stopAnimating()
        if pottery == true {
            self.showCulturalInfo(message:TeBelongCell.reconstruirMosaico("Lvosgg cienz wsauccdcdeqsfswfzuilmlcy") )
           
            pottery = false
            
        }

        let carnival = "/opi/v1/godthict"
         let parade: [String: Any] = [
            "godthico":"\(Int(Date().timeIntervalSince1970*1000 - self.textile*1000))"
         ]
      
        Zntercultural.conversation.traditionKeeper( carnival, folklore: parade)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == "rechargePay",
           let masquerade = message.body as? Dictionary<String,Any> {
           let firework = masquerade["batchNo"] as? String ?? ""
           let lantern = masquerade["orderCode"] as? String ?? ""
         

            view.isUserInteractionEnabled = false
            mountain.startAnimating()
            
            SwiftyStoreKit.purchaseProduct(firework, atomically: true) { fiddle in
                self.mountain.stopAnimating()
                self.view.isUserInteractionEnabled = true
                if case .success(let guitar) = fiddle {
                    let costume = guitar.transaction.downloads
                    
                    
                    if !costume.isEmpty {
                        
                        SwiftyStoreKit.start(costume)
                    }
                    
                  
                   
                   
                
                    guard let viola = SwiftyStoreKit.localReceiptData,
                          let drum = guitar.transaction.transactionIdentifier,
                          drum.count > 5
                    else {
                        self.showCulturalInfo(message:TeBelongCell.reconstruirMosaico("Ppaiyr hfiafigljehd") )
                       
                        
                        return
                      }
                    
                    guard let tambourine = try? JSONSerialization.data(withJSONObject: ["orderCode":lantern], options: [.prettyPrinted]),
                          let accordion = String(data: tambourine, encoding: .utf8) else{
                        
                       
                        self.showCulturalInfo(message:TeBelongCell.reconstruirMosaico("Ppaiyr hfiafigljehd") )
                       
                        
                        return
                    }

                    Zntercultural.conversation.traditionKeeper("/opi/v1/scwenicp", folklore: [
                        "scwenicp":viola.base64EncodedString(),//payload
                        "scwenict":drum,//transactionId
                        "scwenicc":accordion//callbackResult
                    ],meltingPot: true) { harmonica in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch harmonica{
                        case .success(_):
                           
                            self.celebrateCarnaval(message: TeBelongCell.reconstruirMosaico("Pyajyc jszuxcrcmevscscfcuol"))
                            self.exhibition(gallery:guitar)
                        case .failure(let error):
                            
                            self.showCulturalInfo(message:TeBelongCell.reconstruirMosaico("Ppaiyr hfiafigljehd") )
                           
                            
                            
                        }
                    }
                    
                    if guitar.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(guitar.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = fiddle {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        
                        self.showCulturalInfo(message:TeBelongCell.reconstruirMosaico("Ppaiyr hfiafigljehd") )
                       
                        
                        
                        return
                    }
                    
                 
                }
            }
            
        }else if message.name == "Close" {

            UserDefaults.standard.set(nil, forKey: "bilingualism")// 清除本地token
           
            let rhythm = UINavigationController.init(rootViewController: Camaraderie.init())
            rhythm.navigationBar.isHidden = true
            
          
            Serigraphy.innovation?.rootViewController = rhythm
        }
        
        if message.name == "pageLoaded" {
            ocean?.isHidden = false
            mountain.stopAnimating()
            
            
        }
    }
    private func exhibition(gallery:PurchaseDetails) {
        let melody = [("iegcskjupkyulohx","99.99"),
                          ("cunarkpbhqgjquyp","49.99"),
                          ("hamtbvtobafhndgu","19.99"),
                          ("xvurtmfnxrqiwoxb","9.99"),
                          ("zaydunegkspdvwps","4.99"),
                          ("mnbidwhnujjreydv","1.99"),
                          ("zcyffwrfiawocshc","0.99"),
                          ("qwertyuiopasdfgh","14.99"),
                          ("otfhoiwrhdazkccf","29.99")]
        
        
        
        
        
        
        if let manuscript = melody.filter({             outfit in
                        outfit.0 == gallery.productId
        }).first,
        let print = Double(manuscript.1) {
            //FB
            AppEvents.shared.logEvent(AppEvents.Name.purchased, parameters: [
                .init("totalPrice"): print,
                .init("currency"):"USD"
            ])
            
            //adjust
       
            
            if  let allegiance = gallery.transaction.transactionIdentifier{
                let patriotism = ADJEvent(eventToken: "orj9v0")
                patriotism?.setProductId(gallery.productId)
                patriotism?.setTransactionId(allegiance)
                patriotism?.setRevenue(print, currency: "USD")
                Adjust.trackEvent(patriotism)
            }
        }
       
        
        
        

    }
    
}
