//
//  TerraStoriesController.swift
//  VibOrizarant
//
//  2025/6/9.
//

import UIKit

class TerraStoriesController: UIViewController {
    
    @IBOutlet weak var careVabount: UIButton!
    
    @IBOutlet weak var balioFor: UIButton!
    
    @IBOutlet weak var Sharenoisng: UIButton!
    
    @IBOutlet weak var sublime: UIButton!

    @IBAction func unitedDiverse(_ sender: UIButton) {
        var sDuiosd:LLullaby = .mountain //setup
        if sender.tag == 9  {
            sDuiosd =  .timeStretch
        }else if sender.tag == 10{
            sDuiosd =  .ethnography
        }else if sender.tag == 12{
            sDuiosd =  .metronome
        }else if sender.tag == 13{
            sDuiosd =  .relative
        }else if sender.tag == 15{
            sDuiosd =  .offbeat
        }
        JUsinFaverGo(culturalRoute: sDuiosd,lusoToken: "")
    }
    
    
    @IBOutlet weak var lifestyle: UIImageView!
    
    @IBOutlet weak var nostalgia: UILabel!
    
    @IBOutlet weak var memory: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        careVabount.layer.cornerRadius = 22
       
        sublime.layer.masksToBounds = true
        FvgsfprepareFesta()
        balioFor.layer.cornerRadius = 15
        balioFor.layer.masksToBounds = true
        
        
        lifestyle.layer.cornerRadius = 41.5
        
        lifestyle.layer.masksToBounds = true
        if let smail = UserDefaults.standard.object(forKey: "inland") as? String{
            lifestyle.selDymBottom( smail)
        }
        nostalgia.text = UserDefaults.standard.object(forKey: "island") as? String
        memory.text = "UID:\(UserDefaults.standard.object(forKey: "rural") as? Int ?? 111)"
        
    }
    
    
    func FvgsfprepareFesta()  {
        careVabount.layer.masksToBounds = true
        
        Sharenoisng.layer.cornerRadius = 20
        Sharenoisng.layer.masksToBounds = true
        setupCulturalLoadingView()
        
        sublime.layer.cornerRadius = 22
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
    
    @IBAction func storytelling(_ sender: UIButton) {

        let text = "Come and use this amazing app!"
            let appStoreURL = URL(string: "https://apps.apple.com/app/id6747472621")!
            
            let activityVC = UIActivityViewController(
                activityItems: [text, appStoreURL],
                applicationActivities: nil
            )
            
            // 适配iPad（弹出框需要锚点）
            if let popover = activityVC.popoverPresentationController {
                popover.sourceView = self.view
                popover.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.midY, width: 0, height: 0)
                popover.permittedArrowDirections = []
            }
            
            present(activityVC, animated: true)
    }
    
    
}
