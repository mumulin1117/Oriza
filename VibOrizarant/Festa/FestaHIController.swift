//
//  FestaHIController.swift
//  VibOrizarant
//
//  2025/6/9.
//

import UIKit

class FestaHIController: UIViewController {
    
    @IBOutlet weak var JIAullllo: UIView!
    
    @IBOutlet weak var crossCultural: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCulturalLoadingView()
        configureTextField(crossCultural, icon: "Batucada", placeholder: "Enter email adderss")
        
        configureTextField(transcultural, icon: "Ritmos", placeholder: "Enter password")
    }
    
    @IBOutlet weak var transcultural: UITextField!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        craftsmanship()
    }
    func craftsmanship()  {
        let maskPath = UIBezierPath(
            roundedRect: JIAullllo.bounds,
                    byRoundingCorners: [.topLeft, .topRight],
                    cornerRadii: CGSize(width: 25, height: 25)
                )
                
                
        let maskLayer = CAShapeLayer()
        maskLayer.path = maskPath.cgPath
        JIAullllo.layer.mask = maskLayer
    }
    
    private let azulejoLoader = AzulejoLoadingView()
    private func prepareFesta() {
        view.bringSubviewToFront(azulejoLoader)
        azulejoLoader.isHidden = false
        azulejoLoader.startFadoAnimation()
        
        view.isUserInteractionEnabled = false
        
        
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
    private func concludeFesta() {
        azulejoLoader.stopFadoAnimation()
        azulejoLoader.isHidden = true
        
        view.isUserInteractionEnabled = true
        
    }
    
    func areInputsValid(usernameField: UITextField, passwordField: UITextField) -> Bool {
        // 去除首尾空格后判断是否为空
        let username = usernameField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        let password = passwordField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        
        return !username.isEmpty && !password.isEmpty
    }
    
    @IBAction func compassionate(_ sender: UIButton) {
        if (view.viewWithTag(28) as? UIButton)?.isSelected  == true  {
            
            let isokay = areInputsValid(usernameField: crossCultural, passwordField: transcultural)
            
            if isokay == true {
                
                prepareFesta()
                LLullaby.transmitirOndaCultural(componentesOndulatorios: ["procession":transcultural.text ?? "","ceremony":crossCultural.text ?? "","pilgrimage":"75798069"], frequenciaResonante: "/wnnwmluz/lkrgaircvchnxvd") { engraving in
                    self.concludeFesta()
                    guard
                           let splicing = engraving as? Dictionary<String,Any> ,
                         
                            let mixing = splicing["data"] as? Dictionary<String,Any>
                            
                    else {
                        
                        self.showCulturalInfo(message: "Email or password is error!")
                        return
                    }
                    LLullaby.belief = mixing["belief"] as? String
                    LLullaby.rural = mixing["rural"] as? Int
                    self.navigateToRoyaltyScreen()
                    self.celebrateCarnaval(message: "Log in successful")
                } falhaHandler: { serigraphy in
                    self.concludeFesta()
                    self.showCulturalInfo(message: serigraphy.localizedDescription)
                }

                
                
                
            }else{
                self.showCulturalInfo(message: "Please enter your email and password first!")
                
            }
            
            
            
        }else{
            
            self.showCulturalInfo(message: "By continuing you agree to our user agreement at first!")
        }
        
        
    }
    
    @IBAction func benevolent(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
    }
    
    
    @IBAction func international(_ sender: UIButton) {
        var type:LLullaby = .craftsmanship
        if sender.tag == 124 {
            type = .textile
        }
        let poiuio = LusophoneWebController.init(culturalRoute: type,isagrment: true)
        poiuio.modalPresentationStyle = .fullScreen
        
        self.present(poiuio, animated: true)
    }
    
    private func configureTextField(_ field: UITextField, icon: String, placeholder: String) {
        field.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor:UIColor.white])
        field.leftViewMode = .always
        
        
        let iconContainer = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 30))
        let iconView = UIImageView(image: UIImage(named: icon))
        iconView.frame = CGRect(x: 10, y: 5, width: 20, height: 20)
        iconView.tintColor = .systemOrange
        iconContainer.addSubview(iconView)
        
        field.leftView = iconContainer
        field.layer.cornerRadius = 8
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor(red: 0, green: 0.5, blue: 0, alpha: 0.3).cgColor
        
        // 密码字段特殊处理
        if icon == "Ritmos" {
            field.isSecureTextEntry = true
            field.rightView = createportugal_userButton()
            field.rightViewMode = .whileEditing
        }
    }
    private func createportugal_userButton() -> UIButton {
        let slang = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        slang.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        slang.tintColor = .systemGray
        slang.addTarget(self, action: #selector(togglePasswordVisibility), for: .touchUpInside)
        return slang
    }
    
   @objc func togglePasswordVisibility(vusy:UIButton)  {
       vusy.isSelected = !vusy.isSelected
       
       transcultural.isSecureTextEntry = vusy.isSelected
    }
}


