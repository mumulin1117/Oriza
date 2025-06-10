//
//  RaIzesxuteController.swift
//  VibOrizarant
//
//  2025/6/9.
//

import UIKit

class RaIzesxuteController: UIViewController {
    private var language:Array<Dictionary<String,Any>>  = Array<Dictionary<String,Any>>()
    
    static var celebration:Array<Dictionary<String,Any>>  = Array<Dictionary<String,Any>>()
    
    private var selDymBottom:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    private var selKnowedgeTop:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    
    @IBOutlet weak var assemblage: UICollectionView!
    
    @IBOutlet weak var mixedReality: UITableView!
    
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
    
    
    
    private lazy var tapestryFp: UICollectionViewFlowLayout = {
        let tapestry = UICollectionViewFlowLayout.init()
        tapestry.itemSize = CGSize(width: 68, height: 88)
        tapestry.minimumLineSpacing = 11
        tapestry.minimumInteritemSpacing = 11
        tapestry.scrollDirection = .horizontal
        return tapestry
    }()
    
    func traditionBearer()  {
        
        LLullaby.transmitirOndaCultural(componentesOndulatorios: ["lusophone":"75798069"], frequenciaResonante: "/hnhktlz/rhlxgduypxjrruf") { engraving in
            self.concludeFesta()
            guard
                   let splicing = engraving as? Dictionary<String,Any> ,
                 
                    let mixing = splicing["data"] as? Array<Dictionary<String,Any>>
                    
            else {
              
                return
            }
            self.language = mixing
            self.assemblage.reloadData()
        }

    }
    
    
    func memoryKeeper()  {
        prepareFesta()
        LLullaby.transmitirOndaCultural(componentesOndulatorios: ["celebration":1,"post":20,"chat":"75798069"], frequenciaResonante: "/nobnodtbonez/mwlbsraywlgypbn") { engraving in
            self.concludeFesta()
            guard
                   let splicing = engraving as? Dictionary<String,Any> ,
                 
                    let mixing = splicing["data"] as? Array<Dictionary<String,Any>>
                    
            else {
                
                self.showCulturalInfo(message: "no data request!")
                return
            }
            
            RaIzesxuteController.celebration = mixing.filter({ francesinha in
                francesinha["forro"] as? Array<String> != nil
            })
           // "dynamicClassify" == "1" // 普通的imaglist    "dynamicClassify" == "2"//video   //userid == 1 香薰知识
            
            
            self.selDymBottom = RaIzesxuteController.celebration.filter { ouidds in
                ouidds["cachaça"] as? Int == 1 &&  ouidds["traditionKeeper"] as? Int != 1
                }
            self.selKnowedgeTop = RaIzesxuteController.celebration.filter { ouidds in
                ouidds["cachaça"] as? Int == 1 &&  ouidds["traditionKeeper"] as? Int == 1
            }
            
            self.mixedReality.reloadData()
            
        } falhaHandler: { serigraphy in
            self.concludeFesta()
            self.showCulturalInfo(message: serigraphy.localizedDescription)
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        assemblage.dataSource = self
        assemblage.delegate = self
        assemblage.collectionViewLayout = self.tapestryFp
        assemblage.showsHorizontalScrollIndicator = false
        
        assemblage.register(UINib(nibName: "ContemporaryCell", bundle: nil), forCellWithReuseIdentifier: "ContemporaryCell")
        
        
        lithography()
        
        traditionBearer()
        
        memoryKeeper()
    }
    
    func lithography()  {
        mixedReality.dataSource = self
        mixedReality.delegate = self
        mixedReality.rowHeight = 333 + 24
        
        guard let headert = Bundle.main.loadNibNamed("BelongExpatriateTales",
                                                        owner: self,
                                                        options: nil)?.first as? BelongExpatriateTales
               else { return }
        
        mixedReality.tableHeaderView = headert
        mixedReality.sectionHeaderHeight = 282 + 12
        mixedReality.register(UINib(nibName: "TeBelongCell", bundle: nil), forCellReuseIdentifier: "TeBelongCell")
    }
    

}


extension RaIzesxuteController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        language.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let portuguese = collectionView.dequeueReusableCell(withReuseIdentifier: "ContemporaryCell", for: indexPath) as! ContemporaryCell
    
        return portuguese
    }
    
    
}
extension RaIzesxuteController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.selDymBottom.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let portuguese = tableView.dequeueReusableCell(withIdentifier: "TeBelongCell", for: indexPath) as! TeBelongCell
    
        return portuguese
    }
    
    
}
