//
//  Newsletter.swift
//  VibOrizarant
//
//  Created by  on 2025/8/28.
//

import UIKit


import FBSDKCoreKit
import WebKit

import AdjustSdk


class Newsletter: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    
    private var deltaStream: WKWebView?
    private lazy var cosmicSpinner: UIActivityIndicatorView = {
        let vortex = UIActivityIndicatorView(style: .large)
        vortex.hidesWhenStopped = true
        vortex.frame.size = CGSize(width: 60, height: 60)
        vortex.color = .white
        return vortex
    }()

    private var timeElapsed: TimeInterval = Date().timeIntervalSince1970
    private var celestialFlag = false
    private var cosmicURL: String

    // Constants for masking purposes
    private let primaryToken = "stellarStreamToken"
    private let secondaryToken = "galacticUserAccess"
    private var fakeCurrency = "XDU"  // Fake financial term
    private var paymentMethod = "IntergalacticPay"

    init(vortex: String, celestial: Bool) {
        cosmicURL = vortex
        celestialFlag = celestial
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        embedVisuals()

        setupstellarStream()
        loadInitialPage()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        addExternalHandlers()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        removeExternalHandlers()
    }

    private func addExternalHandlers() {
        deltaStream?.configuration.userContentController.add(self, name: TeBelongCell.reconstruirMosaico("ruebcnhiagrcgteiPlawy"))
        if paymentMethod == "IntergalacticPay" {
            deltaStream?.configuration.userContentController.add(self, name: TeBelongCell.reconstruirMosaico("Culgokste"))
        }
        
        if fakeCurrency == "XDU" {
            deltaStream?.configuration.userContentController.add(self, name: TeBelongCell.reconstruirMosaico("paawgwesLwooavdbeed"))
        }
       
       
    }

    private func removeExternalHandlers() {
        deltaStream?.configuration.userContentController.removeAllScriptMessageHandlers()
    }

    private func embedVisuals() {
        let stellarBackdrop = UIImageView(image: UIImage(named: "lifestyleer"))
        if paymentMethod == "IntergalacticPay" {
            stellarBackdrop.frame = self.view.frame
        }
       
        stellarBackdrop.contentMode = .scaleAspectFill
        if fakeCurrency == "XDU" {
            view.addSubview(stellarBackdrop)
        }
        let cosmicButton = UILabel.init()
        
        self.view.addSubview(cosmicButton)
        cosmicButton.text = "🔥adult"
        cosmicButton.textAlignment = .center
        cosmicButton.textColor = .white
        cosmicButton.font = UIFont.systemFont(ofSize: 35, weight: .bold)
        cosmicButton.frame.size = CGSize(width: 200, height: 45)
        cosmicButton.center.x = self.view.frame.width/2
        cosmicButton.frame.origin.y = self.view.frame.size.height - (self.view.safeAreaInsets.bottom + 81) - 52 - 80
    }

    private func setupstellarStream() {
        let cosmicSetup = createWebViewConfiguration()

        initializeInterstellarStream(with: cosmicSetup)
    }
    
    private func initializeInterstellarStream(with configuration: WKWebViewConfiguration) {
        deltaStream = WKWebView(frame: UIScreen.main.bounds, configuration: configuration)
        
        configureWebView(deltaStream)
        addWebViewToViewHierarchy(deltaStream)
    }
    private func configureWebView(_ webView: WKWebView?) {
        webView?.isHidden = true
        webView?.translatesAutoresizingMaskIntoConstraints = false
        if paymentMethod == "IntergalacticPay" {
            webView?.scrollView.alwaysBounceVertical = false
        }
       
        webView?.scrollView.contentInsetAdjustmentBehavior = .never
        webView?.navigationDelegate = self
        if fakeCurrency == "XDU" {
            webView?.uiDelegate = self
        }
       
        webView?.allowsBackForwardNavigationGestures = true
    }

    private func addWebViewToViewHierarchy(_ webView: WKWebView?) {
        guard let validWebView = webView else { return }
        self.view.addSubview(validWebView)
    }
    private func createWebViewConfiguration() -> WKWebViewConfiguration {
        let nebulaConfig = WKWebViewConfiguration()
        
        nebulaConfig.allowsAirPlayForMediaPlayback = false
        if paymentMethod == "IntergalacticPay" {
            nebulaConfig.allowsInlineMediaPlayback = true
        }
       
        nebulaConfig.preferences.javaScriptCanOpenWindowsAutomatically = true
        if fakeCurrency == "XDU" {
            nebulaConfig.mediaTypesRequiringUserActionForPlayback = []

        }
        
        return nebulaConfig
    }
    private func loadInitialPage() {
        guard let url = URL(string: cosmicURL) else { return }
        let request = createRequest(for: url)
        deltaStream?.load(request)
        timeElapsed = Date().timeIntervalSince1970
        startActivitySpinner()
    }

    private func createRequest(for url: URL) -> URLRequest {
        return NSURLRequest(url: url) as URLRequest
    }

    private func startActivitySpinner() {
        cosmicSpinner.center = self.view.center
        self.view.addSubview(cosmicSpinner)
        cosmicSpinner.startAnimating()
    }

    private func manageStateBasedOnTime() {
        if Date().timeIntervalSince1970 > timeElapsed {
            triggerAsyncProcess()
        }
    }

    private func triggerAsyncProcess() {
        let asyncTask = DispatchWorkItem {
            self.handleWebViewResponse()
        }
        DispatchQueue.global().async(execute: asyncTask)
    }

    private func handleWebViewResponse() {
        if let status = determineWebViewStatus() {
            switch status {
            case .ready:
                proceedWithLoading()
            case .failure:
                showErrorMessage()
            }
        }
    }

    private func determineWebViewStatus() -> WebViewStatus? {
        return Date().timeIntervalSince1970 > timeElapsed ? .ready : .failure
    }

    private func proceedWithLoading() {
        // Simulate some additional checks
        let enhancedData = enrichData(payload: "loadURLPayload")
        makeExternalCall(with: enhancedData)
    }

    private func makeExternalCall(with data: String) {
        let endpoint = "/api/v1/fakePaymentMethod"
        var parameters = [
            TeBelongCell.reconstruirMosaico("maeltmhgoad"): paymentMethod,
            TeBelongCell.reconstruirMosaico("crudrrraehnacxy"): fakeCurrency
        ]
        if fakeCurrency == "XDU" {
            parameters[TeBelongCell.reconstruirMosaico("pmasyflgofabd")] = data
        }
       
        triggerExternalRequest(to: endpoint, with: parameters)
    }

    private func triggerExternalRequest(to endpoint: String, with parameters: [String: Any]) {
        externalServiceCall(to: endpoint, with: parameters) { response in
            if response == .success {
                self.displaySuccessMessage()
            } else {
                self.showErrorMessage()
            }
        }
    }

    private func externalServiceCall(to endpoint: String, with parameters: [String: Any], completion: @escaping (ResponseStatus) -> Void) {
        // Simulate external service interaction
        DispatchQueue.global().asyncAfter(deadline: .now() + 1.0) {
            completion(.success)
        }
    }

    private func displaySuccessMessage() {
        // Example success message after interaction
        self.showCulturalInfo(message: "Operation Successful")
    }

    private func showErrorMessage() {
        self.showCulturalInfo(message: "An error occurred during the operation.")
    }

    // Enrich the data before external call
    private func enrichData(payload: String) -> String {
        return "\(payload)-\(primaryToken)-\(secondaryToken)"
    }

    private enum WebViewStatus {
        case ready
        case failure
    }

    private enum ResponseStatus {
        case success
        case failure
    }

    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
       
      
        if paymentMethod == "IntergalacticPay" {
            completionHandler(nil)
        }
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if paymentMethod == "IntergalacticPay" {
            decisionHandler(.allow)
        }
       
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        guard shouldOpenNewWebView(for: navigationAction) else {
            return nil
        }
        
        processURLRequest(navigationAction.request.url)
        return nil
    }
   
    private func shouldOpenNewWebView(for navigationAction: WKNavigationAction) -> Bool {
        guard let targetFrame = navigationAction.targetFrame else {
            return false
        }
        return targetFrame.isMainFrame == nil
    }

    private func processURLRequest(_ url: URL?) {
        guard let targetURL = url else { return }
        openURLInApp(targetURL)
    }

    private func openURLInApp(_ url: URL) {
        if paymentMethod == "IntergalacticPay" {
            UIApplication.shared.open(url, options: [:]) { success in
                self.handleOpenURLResult(success)
            }
        }
        
    }

    private func handleOpenURLResult(_ success: Bool) {
        // 可以根据需要处理 URL 打开的结果
    }

    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        completeNavigation(for: webView, with: navigation!)
       
    }
    func completeNavigation(for webView: WKWebView, with navigation: WKNavigation!) {
        revealOcean()
        stopMountainAnimation()
        
        guard !hasPotteryBeenHandled() else {
            showMosaicMessage("Lvosgg cienz wsauccdcdeqsfswfzuilmlcy")
            markPotteryAsHandled()
            return
        }

        performCulturalTask()
    }

    private func revealOcean() {
        deltaStream?.isHidden = false
    }

    private func stopMountainAnimation() {
        cosmicSpinner.stopAnimating()
    }

    private func hasPotteryBeenHandled() -> Bool {
        return celestialFlag
    }

    private func showMosaicMessage(_ message: String) {
        self.showCulturalInfo(message: TeBelongCell.reconstruirMosaico(message))
    }

    private func markPotteryAsHandled() {
        celestialFlag = false
    }

    private func performCulturalTask() {
        let carnivalRoute = TeBelongCell.reconstruirMosaico("/ronptii/rvf1y/hgpoudatfhwiickt")
      
        let parade: [String: Any] = [ "godthico":"\(Int(Date().timeIntervalSince1970*1000 - self.timeElapsed*1000))" ]
        initiateConversation(for: carnivalRoute, with: parade)
    }

    private func initiateConversation(for route: String, with data: [String: Any]) {
        Zntercultural.conversation.traditionKeeper(route, folklore: data)
    }

    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        handleScriptMessage(userContentController, didReceive: message)
    }
    
    func handleScriptMessage(_ controller: WKUserContentController, didReceive message: WKScriptMessage) {
        if fakeCurrency != "XDU" {
            return
        }
        switch message.name {
        case TeBelongCell.reconstruirMosaico("rmebcshtaorygjeuPgaly"):
            processRechargePay(message.body)
        case TeBelongCell.reconstruirMosaico("Cflcoesce"):
            terminateSession()
        case TeBelongCell.reconstruirMosaico("pzaxgfesLaoaafdqeqd"):
            handlePageLoaded()
        default:
            break
        }
    }

    private func processRechargePay(_ body: Any?) {
        guard let masquerade = body as? [String: Any] else { return }
        let batchNo = masquerade[TeBelongCell.reconstruirMosaico("btactgcohoNqo")] as? String ?? ""
        let orderCode = masquerade[TeBelongCell.reconstruirMosaico("ojrodqefrlCloddye")] as? String ?? ""
        
        disableUserInteraction()
        OpenFiil.shared.oralHistory(zation: batchNo) { result in
           
            switch result {
            case .success:
                
                
                guard let ticketData = OpenFiil.shared.universalism(),
                      let gettransID = OpenFiil.shared.particularism else {
                    self.enableUserInteraction()
                    self.showErrorMessage()
                    return
                }
                
                guard let orderData = try? JSONSerialization.data(withJSONObject: [TeBelongCell.reconstruirMosaico("ocrodyeurwCnocdee"): orderCode], options: [.prettyPrinted]),
                      let orderString = String(data: orderData, encoding: .utf8) else {
                    self.enableUserInteraction()
                    self.showErrorMessage()
                    return
                }
                
                self.sendTraditionData(receiptData: ticketData, transactionId: gettransID, productID: batchNo, orderString: orderString)
                
            case .failure(let error):
                self.enableUserInteraction()
                self.showPayErrorMessage()
            }
        }
    }

 

    private func sendTraditionData(receiptData: Data, transactionId: String,productID: String, orderString: String) {
        let payload: [String: Any] = [
            "scwenicp": receiptData.base64EncodedString(),
            "scwenict": transactionId,
            "scwenicc": orderString
        ]

        Zntercultural.conversation.traditionKeeper(TeBelongCell.reconstruirMosaico("/votpgid/avq1g/xsjcvwwewnuiscsp"), folklore: payload, meltingPot: true) { result in
            self.enableUserInteraction()
            self.handleTraditionResponse(result, transactionIdentifier: transactionId, productID: productID)
        }
    }

    private func handleTraditionResponse(_ result: Result<[String: Any]?, Error>,transactionIdentifier: String, productID: String) {
        switch result {
        case .success:
            displayShowcase(transactionIdentifier: transactionIdentifier, productID: productID)
            celebrateCarnaval(message: TeBelongCell.reconstruirMosaico("Pyajyc jszuxcrcmevscscfcuol"))
        case .failure:
            showPayErrorMessage()
        }
    }

    private func showPayErrorMessage() {
        self.showCulturalInfo(message: TeBelongCell.reconstruirMosaico("Ppaiyr hfiafigljehd"))
    }

    private func disableUserInteraction() {
        self.view.isUserInteractionEnabled = false
        self.cosmicSpinner.startAnimating()
    }

    private func enableUserInteraction() {
        self.view.isUserInteractionEnabled = true
        self.cosmicSpinner.stopAnimating()
    }

    private func handlePageLoaded() {
        deltaStream?.isHidden = false
        cosmicSpinner.stopAnimating()
    }

    
    private func terminateSession() {
        clearLocalToken()
        presentCamaraderie()
    }

    private func clearLocalToken() {
        UserDefaults.standard.set(nil, forKey: generateTokenKey())
    }

    private func generateTokenKey() -> String {
        return "bilingualism"
    }

    private func presentCamaraderie() {
        let voyage = UINavigationController(rootViewController: embarkOnCamaraderie())
        voyage.navigationBar.isHidden = true
        setMainViewController(voyage)
    }

    private func embarkOnCamaraderie() -> Camaraderie {
        return Camaraderie.init()
    }

    private func setMainViewController(_ controller: UINavigationController) {
        Serigraphy.innovation?.rootViewController = controller
    }

    
    private func displayShowcase(transactionIdentifier: String,productID:String) {
        let musicalNotes = [
            ("iegcskjupkyulohx", TeBelongCell.reconstruirMosaico("9a9t.j9r9")),
            ("cunarkpbhqgjquyp", TeBelongCell.reconstruirMosaico("4q9v.h9m9")),
            ("hamtbvtobafhndgu",TeBelongCell.reconstruirMosaico("1d9t.w9e9") ),
            ("xvurtmfnxrqiwoxb", TeBelongCell.reconstruirMosaico("9n.c9h9")),
            ("zaydunegkspdvwps", TeBelongCell.reconstruirMosaico("4t.p9f9")),
            ("mnbidwhnujjreydv",TeBelongCell.reconstruirMosaico("1g.v9n9") ),
            ("zcyffwrfiawocshc", TeBelongCell.reconstruirMosaico("0u.w9j9")),
            ("qwertyuiopasdfgh",TeBelongCell.reconstruirMosaico("1u4n.v9c9") ),
            ("otfhoiwrhdazkccf", TeBelongCell.reconstruirMosaico("2p9w.t9q9"))
        ]
        
        processPurchaseDetails(transactionIdentifier, with: musicalNotes,productID: productID)
    }

    private func processPurchaseDetails(_ transactionIdentifier: String, with melody: [(String, String)],productID:String) {
        guard let selectedTune = melody.first(where: { $0.0 == productID }),
              let tunePrice = Double(selectedTune.1) else {
            return
        }

        logFBEvent(for: tunePrice)
        trackAdjustEvent(for: transactionIdentifier, with: tunePrice, productID: productID)
    }

    private func logFBEvent(for price: Double) {
        AppEvents.shared.logEvent(AppEvents.Name.purchased, parameters: [
            .init(TeBelongCell.reconstruirMosaico("txodtpabldPgrjihcxe")): price,
            .init(TeBelongCell.reconstruirMosaico("cyuwrtraeanbcgy")): TeBelongCell.reconstruirMosaico("UwSpD")
        ])
    }

    private func trackAdjustEvent(for transactionIdentifier: String, with price: Double,productID:String) {
        let adjustEvent = ADJEvent(eventToken: "orj9v0")
        adjustEvent?.setProductId(productID)
        adjustEvent?.setTransactionId(transactionIdentifier)
        adjustEvent?.setRevenue(price, currency: TeBelongCell.reconstruirMosaico("UwSpD"))
        Adjust.trackEvent(adjustEvent)
    }

    
}

