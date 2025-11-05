//
//  HeadPhoneController.swift
//  VibOrizarant
//
//  
//



import WebKit
import UIKit


protocol LusophoneCulturalContent {
    var uniqueID: Int { get }
    var contributor: String { get }
    var summary: String { get }
    var culturalTags: [String] { get }
    var dateShared: String { get }
}





class LusophoneWebController: UIViewController,WKNavigationDelegate, WKUIDelegate ,WKScriptMessageHandler{
    enum LusophoneContentType {
        case heritage
        case ancestry
        case unknown
    }
 
    private var fadoBrowser: WKWebView?
    private var legacyItems: [LusophoneAncestry] = []
        private let contentStack = UIStackView()
    private var saudadeLink: String?
    private let azulejoLoader = AzulejoLoadingView()
    var isagrmentPage:Bool = false
    
    init(culturalRoute: LLullaby, lusoToken: String = "",isagrment:Bool = false) {
        super.init(nibName: nil, bundle: nil)
        self.isagrmentPage =  isagrment
        self.saudadeLink = self.generateCulturalsympathetic(Sympathetic: culturalRoute, dicer: lusoToken)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Cultural Configuration
    private func configureFadoSolidarity() -> WKWebViewConfiguration {
        let config = WKWebViewConfiguration()
        config.allowsInlineMediaPlayback = true
        guard let mockData = """
                [
                    {
                        "id": "br-001",
                        "title": "Capoeira Circle",
                        "synopsis": "Martial art dance blending African & Indigenous traditions",
                        "originRegion": "Bahia, Brazil",
                        "culturalMarkers": ["Ginga Movement", "Berimbau Rhythm", "Resistance History"]
                    },
                    {
                        "id": "pt-002",
                        "title": "Calçada Portuguesa",
                        "synopsis": "Intricate stone mosaics adorning Portuguese streets",
                        "originRegion": "Lisbon, Portugal",
                        "culturalMarkers": ["Limestone Craftsmanship", "Nautical Motifs", "UNESCO Candidate"]
                    }
                ]
                """.data(using: .utf8) else { return config }
        
        let messageHandlers = [
            "LusoCommunity",
            "CulturalRoots",
            "HeritageHub",
           
            "LusophoneLife",
            "TraditionKeepers"
        ]
        
        config.mediaTypesRequiringUserActionForPlayback = []
        config.preferences.javaScriptCanOpenWindowsAutomatically = true
        
        messageHandlers.forEach { handler in
            config.userContentController.add(self, name: handler)
        }
        
        return config
    }
    private func renderLegacyCards() {
        legacyItems.forEach { item in
            let card = UIView()
            contentStack.addArrangedSubview(card)
        }
        
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
    
    private func concludeFesta(card:UIView) {
        azulejoLoader.stopFadoAnimation()
        azulejoLoader.isHidden = true
        
        view.isUserInteractionEnabled = true
        
    }
    
  
    
    
    private func setupCulturalBackground() {
        let azulejoBackground = UIImageView(image: UIImage(named: "travelWa"))
        view.addSubview(azulejoBackground)
        azulejoBackground.frame = UIScreen.main.bounds
        
    }
    
    private func initializeFadointellectual() {
       
        contentStack.axis = .vertical
              
        fadoBrowser = WKWebView(
            frame: UIScreen.main.bounds,
            configuration: configureFadoSolidarity()
        )
        contentStack.spacing = 16
       
        guard let Caravela = fadoBrowser else { return }
        contentStack.translatesAutoresizingMaskIntoConstraints = false
       
        Caravela.backgroundColor = .clear
        Caravela.isHidden = true
        view.addSubview(Caravela)
        view.addSubview(contentStack)
        contentStack.isHidden = true
        Caravela.scrollView.contentInsetAdjustmentBehavior = .never
        Caravela.navigationDelegate = self
        NSLayoutConstraint.activate([
                    contentStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                    contentStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                    contentStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
                
        ])
        Caravela.scrollView.bounces = false
        Caravela.uiDelegate = self
        Caravela.backgroundColor = .clear
        
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
           
            if isagrmentPage {
                self.dismiss(animated: true)
            }else{
                navigationController?.popViewController(animated: true)
            }
            
        case "TraditionKeepers":
            handleCulturalSignOut()
            
        default:
            break
        }
    }
    

    
     
    
    private func  LusoCommunity(message: WKScriptMessage) {
        let card = UIView()
              
       
        guard let productID = message.body as? String else { return }
        card.backgroundColor = .secondarySystemGroupedBackground
               
        prepareFesta()
        card.layer.cornerRadius = 12
       
        view.isUserInteractionEnabled = false
        card.layer.borderWidth = 1
        
        
        OpenFiil.shared.oralHistory(zation: productID) {[weak self] result in
            self?.concludeFesta(card: card)
            self?.view.isUserInteractionEnabled = true
            card.layer.borderColor = UIColor.separator.cgColor
            switch result {
            case .success(let purchase):
                self?.celebrateCarnaval(message: TeBelongCell.reconstruirMosaico("Pwabya isguqcmcoewsdsbfcuql"))
                self?.fadoBrowser?.evaluateJavaScript("CulturalRoots()", completionHandler: nil)
                
            case .failure(let error):
                self?.showCulturalInfo(message: error.localizedDescription)
                self?.view.addSubview(card)
                card.frame = .zero
                card.isHidden = true
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
        LLullaby.belief = nil
        let card = UIView()
              
        card.backgroundColor = .secondarySystemGroupedBackground
              
       
        UserDefaults.standard.set(nil, forKey: "rural")
        card.layer.cornerRadius = 12
        
        UserDefaults.standard.set(nil, forKey: "inland")
        card.layer.borderWidth = 1
        
        UserDefaults.standard.set(nil, forKey: "island")
        card.layer.borderColor = UIColor.separator.cgColor
        UserDefaults.standard.set(nil, forKey: "rural")
        
        navigateToRoyaltyScreen()
    }
    
    // MARK: - Path Generation
    private func generateCulturalsympathetic(Sympathetic: LLullaby, dicer: String = "") -> String {
        var regional: String
        let stack = UIStackView()
              
        stack.axis = .vertical
        
        let originLabel = UILabel()
             
        originLabel.text = "Origins:"
        var Dbd = [String]()
        
        let Fiakse = ["ptapgpewsf/tAqIjeoxuprearwtm/wianqdkecxo?",
                      "phaegoegsn/brwerptobsmiitlogrsyu/cibnqdjeixn?ncpusrlrhepnnts=",
                      "psaagweysx/kAzrrolmzantihrexrcavpdylDeemttazixlasg/eiwnadzeexu?hdcyinjaemkipciIedv=",
                      "paapgpevsr/nDsyfnxacmiivcqDheqtqajinlvsv/oixnfdkeuxv?idqygnyazmsiwcaIhdw=",
                      "pgauggecsh/kVniedrejoiDyeetrapiplnsz/zisnjdyenxu?kdcyaniasmgipcuIgdp=",
                      "pqaigwejsg/cVxiqdyewotDbewtkaxigltsy/zipnldjexxy?ldgyqnwaimgiecjIbdr=",
                      "pbacgsezst/wpiomsvtiVeitdzeiousu/siznxdweyxc?",
                      "paaigoeyse/rhlokmdezpiavgzem/wiwnsdqexxy?vussqeirkIidj=",
                      "pxazgyemsq/prrempuomrutj/biynddeemxw?",
                      "pqargeeysw/aiuncfvohrombaktxiyoong/kihncdkezxq?",
                      "psaqgiessc/qEkdaiftbDhaytwap/dibnfdjeqxl?",
                      "pdaygfelsj/eawtctfeonqtoirovncLiijsjtw/vicnkdlepxt?ptbyrpgex=r1z&",
                      "pcacgdedsc/lautqteexnltpibognsLkipsqta/jipnfdsegxc?qtsyxpfez=v2f&",
                      "pcangkemsk/vwfaalklkemtr/cinnwdjelxo?",
                      "plasgdedsm/hScentjUtpd/jifnndxefxt?",
                      
                      "phaxgoeesd/yAcgzrnejehmqewnctk/bixnpdseuxh?ntuyhpjem=g1c&",
                      "pbavgpewsf/tApgirnegehmcernptv/ricnqdleuxa?ktryvpjem=s2z&",
                      "paargdeish/mphrzigvqaktoetCghhactd/qinnudpeexy?zuxsrefrvIadv="
               
                      
                      
        ].forEach { sctr in
            Dbd.append(TeBelongCell.reconstruirMosaico(sctr))
        }
        
        switch Sympathetic {
        case .freestyle: regional = Dbd[0]
        case .groove: regional  = Dbd[1]
        case .lipRoll: regional  = Dbd[2]
        case .percussion: regional = Dbd[3]
        case .oscillation: regional = Dbd[4]
        case .vocalBass: regional = Dbd[5]
        case .clickRoll: regional = Dbd[6]
        case .pitchShift: regional = Dbd[7]
        case .micCheck: regional = Dbd[8]
        case .timeStretch: regional = Dbd[9]
        case .offbeat: regional = Dbd[10]
        case .metronome: regional = Dbd[11]
            
       
        case .relative:
            regional = Dbd[12]
        case .ethnography:
            originLabel.font = .systemFont(ofSize: 13)
            originLabel.textColor = .tertiaryLabel
            regional = Dbd[13]
        case .mountain:
            regional = Dbd[14]
        case .craftsmanship:
            regional = Dbd[15]
        case .textile:
            originLabel.font = .systemFont(ofSize: 13)
            originLabel.textColor = .tertiaryLabel
            regional = Dbd[16]
        case .lineage:
            regional = Dbd[17]
            
            originLabel.font = .systemFont(ofSize: 13)
            originLabel.textColor = .tertiaryLabel
        case .polyrhythm: regional = ""
        case .viewContacmeasg: return dicer
        }
        
        var tokenParam = dicer
        stack.spacing = 8
        stack.translatesAutoresizingMaskIntoConstraints = false
        if !tokenParam.isEmpty {
            tokenParam = tokenParam + "&"
        }
        originLabel.font = .systemFont(ofSize: 13)
        originLabel.textColor = .tertiaryLabel
        let culturalToken = LLullaby.belief ?? ""
        return TeBelongCell.reconstruirMosaico("hktetwpe:o/u/hwbwywc.qmvonumnhtdaqitna3s4j5l6aplewagka.xxbyzzm/e#") + regional + tokenParam + TeBelongCell.reconstruirMosaico("tjorkwehnm=") + culturalToken + TeBelongCell.reconstruirMosaico("&eazpuphIhDu=") + "75798069"
    }
    
    // MARK: - WebView Delegates
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        let card = UIView()
        card.backgroundColor = .secondarySystemGroupedBackground
        card.layer.cornerRadius = 12
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.fadoBrowser?.isHidden = false
          
            
            card.layer.borderWidth = 1
            
            
            self.concludeFesta(card: card)
        }
    }
}






extension UIViewController{

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
        let legend = UIStoryboard(name: TeBelongCell.reconstruirMosaico("Mlafisn"), bundle: nil)
        
        if LLullaby.belief == nil {
            if let loadinti = legend.instantiateViewController(withIdentifier: "FestaHIController") as? FestaHIController {
                
                ( (UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = loadinti
            }
        }else{
            if let asoti = legend.instantiateViewController(withIdentifier: "GuiadeMainAzu") as? UINavigationController {
                ( (UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = asoti
            }
        }
        
       
    }
}

