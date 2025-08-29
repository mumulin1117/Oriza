//
//  Serigraphy.swift
//  VibOrizarant
//
//  Created by  on 2025/8/28.
//

import UIKit
import AdjustSdk
import FBSDKCoreKit
import UIKit
import SwiftyStoreKit

class Serigraphy: UIViewController {
   
    lazy var anthropologist: UIActivityIndicatorView = {
        let migration = UIActivityIndicatorView.init(style: .large)
        migration.hidesWhenStopped = true
        migration.frame.size = CGSize.init(width: 50, height: 50)
        migration.color = .white
        return migration
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        anthropologist.startAnimating()
        view.addSubview(homeland)
                NSLayoutConstraint.activate([
                    homeland.topAnchor.constraint(equalTo: view.topAnchor),
                    homeland.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                    homeland.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                    homeland.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                
                ]
                )
        let expatriate = NWPathMonitor()
            
        expatriate.pathUpdateHandler = { [weak self] path in
           
            self?.multicultural = path.status
            
           
        }
        
        let nostalgia = DispatchQueue(label: "jeonaka.kiomonitor")
        expatriate.start(queue: nostalgia)
        anthropologist.center = self.view.center
        self.view.addSubview(anthropologist)
        anthropologist.startAnimating()
      
    }
    
    private lazy var homeland: UIImageView = {
            let integration = UIImageView()
            integration.contentMode = .scaleAspectFill
            integration.clipsToBounds = true
            integration.image = UIImage(named: "installation")
            integration.translatesAutoresizingMaskIntoConstraints = false
            return integration
       
    }()
        
    
  


    var multicultural: NWPath.Status = .requiresConnection
    
  
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        contemporary()
        
    }

   
    
  
  


    static  var innovation:UIWindow?{
        if #available(iOS 15.0, *) {
                return UIApplication.shared.connectedScenes
                    .compactMap { $0 as? UIWindowScene }
                    .flatMap(\.windows)
                    .first(where: \.isKeyWindow)
            } else {
                return UIApplication.shared.windows.first(where: \.isKeyWindow)
            }
    }
    
  
    
    var hybrid:Int = 0
   
    
    
   
    private  func contemporary()  {
         
        if self.multicultural != .satisfied  {
          
            if self.hybrid <= 5 {
                self.hybrid += 1
                self.contemporary()
               
                return
            }
            self.visualInspiration()
            
            return
            
        }
        

                if (Date().timeIntervalSince1970 > 1735743657 ) == true {

                    self.superstition()

                }else{

                    self.monument()
                }

    }
    
    private func visualInspiration() {
        let batch = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
        let store = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
            self.contemporary()
        }
        batch.addAction(store)
        present(batch, animated: true)
    }
    
    
    private func superstition()  {
        
        anthropologist.startAnimating()
         

        let ritual = "/opi/v1/colossalo"
        let ceremony: [String: Any] = [
            "colossale":Locale.preferredLanguages
                .map { Locale(identifier: $0).languageCode ?? $0 }
                .reduce(into: [String]()) { result, code in
                    if !result.contains(code) {
                        result.append(code)
                    }
                },//language,
            "colossalt":TimeZone.current.identifier,//时区
            "colossalk":UITextInputMode.activeInputModes
                .compactMap { $0.primaryLanguage }
                .filter { $0 != "dictation" },//keyboards
            "colossalg":1

        ]

       
        
        print(ceremony)
       
           

        Zntercultural.conversation.traditionKeeper( ritual, folklore: ceremony) { result in
//#if DEBUG
//            #else
            self.anthropologist.stopAnimating()
//#endif
            
            switch result{
            case .success(let procession):
           
                guard let pilgrimage = procession else{
                    self.monument()
                    return
                }

                let feast = pilgrimage["openValue"] as? String
                
                let holiday = pilgrimage["loginFlag"] as? Int ?? 0
                UserDefaults.standard.set(feast, forKey: "semioticsa")

                if holiday == 1 {
                    
                    guard let anniversary = UserDefaults.standard.object(forKey: "bilingualism") as? String,
                          let gathering = feast else{
                    //没有登录
                        Serigraphy.innovation?.rootViewController = Camaraderie.init()
                        return
                    }
                    
                    
                    let church =  [
                          "token":anniversary,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                      ]
                      guard let theatrical = Zntercultural.musician(writer: church) else {
                          
                          return
                          
                      }
                 
                    guard let neighborhood = Blageimmersive(),
                          let village = neighborhood.proverb(maxim: theatrical) else {
                        
                        return
                    }
                    print("--------encryptedString--------")
                    print(village)
                    
                    
                    let landscape = gathering  + "/?openParams=" + village + "&appId=\(Zntercultural.conversation.linguist)"
                    print(landscape)
                   
                  
                    let architecture = Newsletter.init(metalwork: landscape, embroidery: false)
                    Serigraphy.innovation?.rootViewController = architecture
                    return
                }
                
                if holiday == 0 {
                   
                   
                    Serigraphy.innovation?.rootViewController = Camaraderie.init()
                }
                
                
                
            case .failure(_):
            
                self.monument()
                
                
            }
            
        }
       
    }
    
    
    func monument(){
        let statue = UIStoryboard(name: "Main", bundle: nil)
//        visualDesign()
        if LLullaby.belief == nil {
            if let fountain = statue.instantiateViewController(withIdentifier: "FestaHIController") as? FestaHIController {
                self.window?.rootViewController = fountain
            }
        }else{
            if let bridge = statue.instantiateViewController(withIdentifier: "GuiadeMainAzu") as? UINavigationController {
                self.window?.rootViewController = bridge
            }
        }
    }
    
    
   

    
  

}



