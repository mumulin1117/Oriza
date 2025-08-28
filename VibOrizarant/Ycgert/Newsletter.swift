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
    private var creativeGroundbreaker:WKWebView?
    lazy var brushGroundbreaker: UIActivityIndicatorView = {
        let brushGround = UIActivityIndicatorView.init(style: .large)
        brushGround.hidesWhenStopped = true
        brushGround.frame.size = CGSize.init(width: 50, height: 50)
        brushGround.color = .white
        return brushGround
    }()
    var visualPattern:TimeInterval = Date().timeIntervalSince1970
    
    private  var artisticGround = false
    private var creativeTrendsetter:String
    
    init(Trendsetter:String,Matrix:Bool) {
        creativeTrendsetter = Trendsetter
        
        artisticGround = Matrix
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        creativeGroundbreaker?.configuration.userContentController.add(self, name: "rechargePay")
        creativeGroundbreaker?.configuration.userContentController.add(self, name: "Close")
        creativeGroundbreaker?.configuration.userContentController.add(self, name: "pageLoaded")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        creativeGroundbreaker?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    private func artisticTrendsetter()  {
        let creativeForerunner = UIImage(named: "installation")
        
        let brushForerunner = UIImageView(image:creativeForerunner )
        brushForerunner.frame = self.view.frame
        brushForerunner.contentMode = .scaleAspectFill
        view.addSubview(brushForerunner)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        artisticTrendsetter()
        if artisticGround == true {
            let  colorIndividuality = UIButton.init()
            colorIndividuality.setBackgroundImage(UIImage.init(named: "invitation"), for: .normal)
            colorIndividuality.setTitle("Log in", for: .normal)
            colorIndividuality.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
            colorIndividuality.setTitleColor(.white, for: .normal)
            colorIndividuality.isUserInteractionEnabled = false
            view.addSubview(colorIndividuality)
            colorIndividuality.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
                // make.centerX.equalToSuperview()
                colorIndividuality.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                
                // make.height.equalTo(52)
                colorIndividuality.heightAnchor.constraint(equalToConstant: 52),
                
                // make.width.equalTo(335)
                colorIndividuality.widthAnchor.constraint(equalToConstant: 335),
                
                // make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
                colorIndividuality.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 65)
            ])
        }
        
        
        
         
        let visualNetwork = WKWebViewConfiguration()
        visualNetwork.allowsAirPlayForMediaPlayback = false
        visualNetwork.allowsInlineMediaPlayback = true
        visualNetwork.preferences.javaScriptCanOpenWindowsAutomatically = true
        visualNetwork.mediaTypesRequiringUserActionForPlayback = []
        visualNetwork.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        creativeGroundbreaker = WKWebView.init(frame: UIScreen.main.bounds, configuration: visualNetwork)
        creativeGroundbreaker?.isHidden = true
        creativeGroundbreaker?.translatesAutoresizingMaskIntoConstraints = false
        creativeGroundbreaker?.scrollView.alwaysBounceVertical = false
        
        creativeGroundbreaker?.scrollView.contentInsetAdjustmentBehavior = .never
        creativeGroundbreaker?.navigationDelegate = self
        
        creativeGroundbreaker?.uiDelegate = self
        creativeGroundbreaker?.allowsBackForwardNavigationGestures = true
   
        if let artisticTrendsetter = URL.init(string: creativeTrendsetter) {
            creativeGroundbreaker?.load(NSURLRequest.init(url:artisticTrendsetter) as URLRequest)
            visualPattern = Date().timeIntervalSince1970
        }
        self.view.addSubview(creativeGroundbreaker!)
        
        
        
        brushGroundbreaker.center = self.view.center
        self.view.addSubview(brushGroundbreaker)
        brushGroundbreaker.startAnimating()
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
        creativeGroundbreaker?.isHidden = false
        
        
        brushGroundbreaker.stopAnimating()
        if artisticGround == true {
            self.showCulturalInfo(message:TeBelongCell.reconstruirMosaico("Lvosgg cienz wsauccdcdeqsfswfzuilmlcy") )
           
            artisticGround = false
            
        }

        let creativeForerunner = "/opi/v1/doodlest"
         let brushForerunner: [String: Any] = [
            "doodleso":"\(Int(Date().timeIntervalSince1970*1000 - self.visualPattern*1000))"
         ]
      
        Zntercultural.artisticArtisan.artisticTrainerFive( creativeForerunner, orVariation: brushForerunner)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == "rechargePay",
           let creativeTrailblazer = message.body as? Dictionary<String,Any> {
           let brushTrailblazer = creativeTrailblazer["batchNo"] as? String ?? ""
           let colorDistinction = creativeTrailblazer["orderCode"] as? String ?? ""
         

            view.isUserInteractionEnabled = false
            brushGroundbreaker.startAnimating()
            
            SwiftyStoreKit.purchaseProduct(brushTrailblazer, atomically: true) { artisticTrailblazer in
                self.brushGroundbreaker.stopAnimating()
                self.view.isUserInteractionEnabled = true
                if case .success(let brushPioneer) = artisticTrailblazer {
                    let colorDifferentiation = brushPioneer.transaction.downloads
                    
                    
                    if !colorDifferentiation.isEmpty {
                        
                        SwiftyStoreKit.start(colorDifferentiation)
                    }
                    
                  
                   
                   
                
                    guard let artisticPioneer = SwiftyStoreKit.localReceiptData,
                          let creativeInnovator = brushPioneer.transaction.transactionIdentifier,
                          creativeInnovator.count > 5
                    else {
                        self.showCulturalInfo(message:TeBelongCell.reconstruirMosaico("Ppaiyr hfiafigljehd") )
                       
                        
                        return
                      }
                    
                    guard let visualAssembly = try? JSONSerialization.data(withJSONObject: ["orderCode":colorDistinction], options: [.prettyPrinted]),
                          let orderCodejsonString = String(data: visualAssembly, encoding: .utf8) else{
                        
                       
                        self.showCulturalInfo(message:TeBelongCell.reconstruirMosaico("Ppaiyr hfiafigljehd") )
                       
                        
                        return
                    }

                    Zntercultural.artisticArtisan.artisticTrainerFive("/opi/v1/tapestryp", orVariation: [
                        "tapestryp":artisticPioneer.base64EncodedString(),//payload
                        "tapestryt":creativeInnovator,//transactionId
                        "tapestryc":orderCodejsonString//callbackResult
                    ],creativeTrainerd: true) { creativeOriginator in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch creativeOriginator{
                        case .success(_):
                           
                            self.celebrateCarnaval(message: TeBelongCell.reconstruirMosaico("Pyajyc jszuxcrcmevscscfcuol"))
                            self.artisticOriginator(colorTuning:brushPioneer)
                        case .failure(let error):
                            
                            self.showCulturalInfo(message:TeBelongCell.reconstruirMosaico("Ppaiyr hfiafigljehd") )
                           
                            
                            
                        }
                    }
                    
                    if brushPioneer.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(brushPioneer.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = artisticTrailblazer {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        
                        self.showCulturalInfo(message:TeBelongCell.reconstruirMosaico("Ppaiyr hfiafigljehd") )
                       
                        
                        
                        return
                    }
                    
                 
                }
            }
            
        }else if message.name == "Close" {

            UserDefaults.standard.set(nil, forKey: "fableepic")// 清除本地token
           
            let brushOriginator = UINavigationController.init(rootViewController: Camaraderie.init())
            brushOriginator.navigationBar.isHidden = true
            
          
            Serigraphy.colorMixing?.rootViewController = brushOriginator
        }
        
        if message.name == "pageLoaded" {
            creativeGroundbreaker?.isHidden = false
            brushGroundbreaker.stopAnimating()
            
            
        }
    }
    private func artisticOriginator(colorTuning:PurchaseDetails) {
        let colorAdjustment = [("iegcskjupkyulohx","99.99"),
                          ("cunarkpbhqgjquyp","49.99"),
                          ("hamtbvtobafhndgu","19.99"),
                          ("xvurtmfnxrqiwoxb","9.99"),
                          ("zaydunegkspdvwps","4.99"),
                          ("mnbidwhnujjreydv","1.99"),
                          ("zcyffwrfiawocshc","0.99"),
                          ("qwertyuiopasdfgh","14.99"),
                          ("otfhoiwrhdazkccf","29.99")]
        
        
        
        
        
        
        if let creativeArtisan = colorAdjustment.filter({             outfit in
                        outfit.0 == colorTuning.productId
        }).first,
        let visualLibrary = Double(creativeArtisan.1) {
            //FB
            AppEvents.shared.logEvent(AppEvents.Name.purchased, parameters: [
                .init("totalPrice"): visualLibrary,
                .init("currency"):"USD"
            ])
            
            //adjust
       
            
            if  let colorDimension = colorTuning.transaction.transactionIdentifier{
                let brushInstructor = ADJEvent(eventToken: "orj9v0")
                brushInstructor?.setProductId(colorTuning.productId)
                brushInstructor?.setTransactionId(colorDimension)
                brushInstructor?.setRevenue(visualLibrary, currency: "USD")
                Adjust.trackEvent(brushInstructor)
            }
        }
       
        
        
        

    }
    
}
