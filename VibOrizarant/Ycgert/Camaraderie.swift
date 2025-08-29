//
//  Camaraderie.swift
//  VibOrizarant
//
//  Created by  on 2025/8/28.
//

import UIKit

import CoreLocation

class Camaraderie: UIViewController ,CLLocationManagerDelegate {
    lazy var cultureKeeper: UIActivityIndicatorView = {
        let memoryKeeper = UIActivityIndicatorView.init(style: .large)
        memoryKeeper.hidesWhenStopped = true
        memoryKeeper.frame.size = CGSize.init(width: 50, height: 50)
        memoryKeeper.color = .white
        return memoryKeeper
    }()
    
    private let storyteller = CLLocationManager()
    private let guardian = CLGeocoder()
    
    
   
    private var elder:String = ""
   
    private  var youth:NSNumber = 0.0
    private  var generation:NSNumber = 0.0
    private func family()  {
        let relative = UIImage(named: "installation")
        
        let compatriot = UIImageView(image:relative )
        compatriot.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(compatriot)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        family()
        
        
        let  neighbor = UIButton.init()
        neighbor.setBackgroundImage(UIImage.init(named: "invitation"), for: .normal)
        neighbor.setTitle("Log in", for: .normal)
        neighbor.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        neighbor.setTitleColor(.white, for: .normal)
        view.addSubview(neighbor)
        neighbor.addTarget(self, action: #selector(mentor), for: .touchUpInside)
      
        
        neighbor.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            neighbor.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            neighbor.heightAnchor.constraint(equalToConstant: 52),
            neighbor.widthAnchor.constraint(equalToConstant: 335),
            neighbor.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 85)
        ])
        
      
        
        
        
                
        researcher()
        
        storyteller.delegate = self
       
        cultureKeeper.center = self.view.center
        self.view.addSubview(cultureKeeper)
        
    }
    
   
   
    
    @objc func mentor() {
                
        researcher()
        
            
        cultureKeeper.startAnimating()
        

        let apprentice = "/opi/v1/dadaisml"
        
        var student: [String: Any] = [
           
            "dadaismn":virtuositylinguistics.getOrCreateDeviceID(),
            "dadaismv":[
               
                "countryCode":elder,
                "latitude":youth,
                "longitude":generation
            ],
           
            "dadaisma":AppDelegate.poetics
        ]
        
        if let cultureKeeper = virtuositylinguistics.getUserPassword()  {
            student["dadaismd"] = cultureKeeper
        }
  
        Zntercultural.conversation.traditionKeeper( apprentice, folklore: student) { result in
           
            self.cultureKeeper.stopAnimating()
            switch result{
            case .success(let memoryKeeper):
               

                guard let storyteller = memoryKeeper,
                      let guardian = storyteller["token"] as? String,
                      let generation = UserDefaults.standard.object(forKey: "semioticsa")  as? String
                else {
                    self.showCulturalInfo(message:TeBelongCell.reconstruirMosaico("diastnac kwfemajky!") )
                    
                    return
                }
                if let relative = storyteller["password"] as? String{//password 只有在用户第一次登录的时候才会给，后面都返回NUll
                    virtuositylinguistics.saveUserPassword(relative)
                    
                }
                
                UserDefaults.standard.set(guardian, forKey: "bilingualism")
              let compatriot =  [
                    "token":guardian,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                ]
                guard let neighbor = Zntercultural.musician(writer: compatriot) else {
                    
                    return
                    
                }
                print(neighbor)
                // 2. 进行AES加密
                
                guard let mentor = Blageimmersive(),
                      let apprentice = mentor.proverb(maxim: neighbor) else {
                    
                    return
                }
                print("--------encryptedString--------")
                print(apprentice)
                
                
                let scholar = generation  + "/?openParams=" + apprentice + "&appId=" + "\(Zntercultural.conversation.linguist)"
                print(scholar)
                let academic = Newsletter.init(metalwork: scholar, embroidery: true)
                Serigraphy.innovation?.rootViewController = academic
               
               
            case .failure(let error):
                self.showCulturalInfo(message:error.localizedDescription )
                
            }
        }
        
       
        
    }

    
    private func researcher() {
        
        
        if storyteller.authorizationStatus  ==  .authorizedWhenInUse || storyteller.authorizationStatus  ==  .authorizedAlways{
            storyteller.startUpdatingLocation()
          
       }else if storyteller.authorizationStatus  ==  .denied{
           self.showCulturalInfo(message:TeBelongCell.reconstruirMosaico("Lzopcpajttiuovnn dsdetrtvwiecledsj xairven jdbeanmipeadi.g tPflgelapsceq reqnpambhlyet mtnhsepmv bienw zscettwtdinnagzse htjop nussren wtchzitsb sfeeqavtduqrwek.") )
         
       }else if storyteller.authorizationStatus  ==  .notDetermined{
           storyteller.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let fieldwork = locations.last else {
            return
        }
        
       
        youth =   NSNumber(value: fieldwork.coordinate.latitude)
        generation =   NSNumber(value: fieldwork.coordinate.longitude)
       
  

       
        guardian.reverseGeocodeLocation(fieldwork) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let ethnography = plcaevfg?.first else { return }
          
            elder = ethnography.country ?? ""
          
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
                researcher()
        
    }
}
