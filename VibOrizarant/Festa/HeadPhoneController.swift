//
//  HeadPhoneController.swift
//  VibOrizarant
//
//  Created by mumu on 2025/6/10.
//



import WebKit
import UIKit

import SwiftyStoreKit

class LusophoneWebController: UIViewController, WKScriptMessageHandler, WKNavigationDelegate, WKUIDelegate {
    
    // MARK: - Cultural Web Elements
    private var fadoBrowser: WKWebView?
    private var saudadeLink: String?
    private let azulejoLoader = AzulejoLoadingView()
    init(culturalRoute: NoiseGate, lusoToken: String = "") {
        super.init(nibName: nil, bundle: nil)
        self.saudadeLink = self.generateCulturalsympathetic(Sympathetic: culturalRoute, dicer: lusoToken)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Cultural Configuration
    private func configureFadoSolidarity() -> WKWebViewConfiguration {
        let messageHandlers = [
            "LusoCommunity",
            "CulturalRoots",
            "HeritageHub",
           
            "LusophoneLife",
            "TraditionKeepers"
        ]
        let config = WKWebViewConfiguration()
        config.allowsInlineMediaPlayback = true
        config.mediaTypesRequiringUserActionForPlayback = []
        config.preferences.javaScriptCanOpenWindowsAutomatically = true
        
        messageHandlers.forEach { handler in
            config.userContentController.add(self, name: handler)
        }
        
        return config
    }
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCulturalLoadingView()
        setupCulturalBackground()
        initializeFadointellectual()
        
        prepareFesta()
    }
    private func setupCulturalLoadingView() {
        view.addSubview(azulejoLoader)
        azulejoLoader.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            azulejoLoader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            azulejoLoader.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            azulejoLoader.widthAnchor.constraint(equalToConstant: 80),
            azulejoLoader.heightAnchor.constraint(equalToConstant: 80)
        ])
        azulejoLoader.isHidden = true
        
    }
    
    private func prepareFesta() {
        view.bringSubviewToFront(azulejoLoader)
        azulejoLoader.isHidden = false
        azulejoLoader.startFadoAnimation()
        
        view.isUserInteractionEnabled = false
        
        
    }
    
    private func concludeFesta() {
        azulejoLoader.stopFadoAnimation()
        azulejoLoader.isHidden = true
        
        view.isUserInteractionEnabled = true
        
    }
    
  
    
    
    private func setupCulturalBackground() {
        let azulejoBackground = UIImageView(image: UIImage(named: "commentary"))
        view.addSubview(azulejoBackground)
        azulejoBackground.frame = UIScreen.main.bounds
        
    }
    
    private func initializeFadointellectual() {
       
        
        fadoBrowser = WKWebView(
            frame: UIScreen.main.bounds,
            configuration: configureFadoSolidarity()
        )
        
        guard let Caravela = fadoBrowser else { return }
        
        Caravela.backgroundColor = .clear
        Caravela.isHidden = true
        view.addSubview(Caravela)
        
        Caravela.scrollView.contentInsetAdjustmentBehavior = .never
        Caravela.navigationDelegate = self
        Caravela.scrollView.bounces = false
        Caravela.uiDelegate = self
        
        if let culturalPath = saudadeLink, let url = URL(string: culturalPath) {
            Caravela.load(URLRequest(url: url))
        }
    }
    
    // MARK: - Message Handling
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        switch message.name {
      
        case "LusoCommunity":
                        
            LusoCommunity(message: message)
            
        case "HeritageHub":
            handleCulturalNavigation(message: message)
            
    
            
        case "LusophoneLife":
            navigationController?.popViewController(animated: true)
            
        case "TraditionKeepers":
            handleCulturalSignOut()
            
        default:
            break
        }
    }
    

    
     
    
    private func             LusoCommunity(message: WKScriptMessage) {
        guard let productID = message.body as? String else { return }
     
        prepareFesta()
        view.isUserInteractionEnabled = false
        
        SwiftyStoreKit.purchaseProduct(productID, atomically: true) { [weak self] result in
            self?.concludeFesta()
            self?.view.isUserInteractionEnabled = true
            
            switch result {
            case .success(let purchase):
                self?.celebrateCarnaval(message: "Pay successful")
                self?.fadoBrowser?.evaluateJavaScript("CulturalRoots()", completionHandler: nil)
                
            case .error(let error):
                if error.code != .paymentCancelled {
                    self?.showCulturalInfo(message: error.localizedDescription)
                   
                }
            }
        }
    }
    
    private func handleCulturalNavigation(message: WKScriptMessage) {
        if let pathToken = message.body as? String {
            let newController = LusophoneWebController(
                culturalRoute: .viewContacmeasg,
                lusoToken: pathToken
            )
            navigationController?.pushViewController(newController, animated: true)
        }
    }
    
    private func handleCulturalSignOut() {
        NoiseGate.recording = nil
        NoiseGate.feed = nil
        navigateToRoyaltyScreen()
    }
    
    // MARK: - Path Generation
    private func generateCulturalsympathetic(Sympathetic: NoiseGate, dicer: String = "") -> String {
        var regional: String
        
        switch Sympathetic {
        case .freestyle: regional = "pages/AIexpert/index?"
        case .groove: regional = "pages/repository/index?current="
        case .lipRoll: regional = "pages/AromatherapyDetails/index?dynamicId="
        case .percussion: regional = "pages/DynamicDetails/index?dynamicId="
        case .oscillation: regional = "pages/VideoDetails/index?dynamicId="
        case .vocalBass: regional = "pages/issue/index?"
        case .clickRoll: regional = "pages/postVideos/index?"
        case .pitchShift: regional = "pages/homepage/index?userId"
        case .micCheck: regional = "pages/report/index?"
        case .timeStretch: regional = "pages/information/inde?"
        case .offbeat: regional = "pages/EditData/index?"
        case .metronome: regional = "pages/attentionList/index?type=1&"
            
       
        case .relative:
            regional = "pages/attentionList/index?type=2&"
        case .ethnography:
            regional = "pages/wallet/index?"
        case .mountain:
            regional = "pages/SetUp/index?"
        case .craftsmanship:
            regional = "pages/Agreement/index?type=1&"
        case .textile:
            regional = "pages/Agreement/index?type=2&"
        case .lineage:
            regional = "pages/privateChat/index?userId="
        
        case .polyrhythm: regional = ""
        case .viewContacmeasg: return dicer
        }
        
        var tokenParam = dicer
        if !tokenParam.isEmpty {
            tokenParam = tokenParam + "&"
        }
        
        let culturalToken = NoiseGate.feed ?? ""
        return "http://www.mountain3456peak.xyz/#" + regional + tokenParam + "token=" + culturalToken + "&appID=" + NoiseGate.appID
    }
    
    // MARK: - WebView Delegates
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.fadoBrowser?.isHidden = false
            self.concludeFesta()
        }
    }
}






extension UIViewController{
    var window:UIWindow?{
        return (UIApplication.shared.connectedScenes
            .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
            .windows
            .first(where: \.isKeyWindow)
    }
    
     func showCulturalStatusView(_ statusView: NavegadorStatusView) {
            view.addSubview(statusView)
            statusView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                statusView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                statusView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                statusView.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 20),
                statusView.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -20)
            ])
            
            statusView.showAndAutoDismiss()
       
    }
    
     func celebrateCarnaval(message: String) {
        let successView = NavegadorStatusView(type: .caravelaSuccess, message: message)
           showCulturalStatusView(successView)
       }
       
       
    func showCulturalInfo(message: String) {
       let infoView = NavegadorStatusView(type: .padraoInfo, message: message)
       showCulturalStatusView(infoView)
   }
    
    
    func navigateToRoyaltyScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        if NoiseGate.feed == nil {
            if let loadinti = storyboard.instantiateViewController(withIdentifier: "FestaHIController") as? FestaHIController {
                self.window?.rootViewController = loadinti
            }
        }else{
            if let asoti = storyboard.instantiateViewController(withIdentifier: "GuiadeMainAzu") as? UINavigationController {
                self.window?.rootViewController = asoti
            }
        }
        
       
    }
}
