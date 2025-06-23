//
//  SonsdaController.swift
//  VibOrizarant
//
//  2025/6/9.
//

import UIKit

class SonsdaController: UIViewController {
    private var selDymBottom:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    @IBOutlet weak var mountain: UICollectionView!
    
    
    private lazy var tapestryFp: UICollectionViewFlowLayout = {
        let tapestry = UICollectionViewFlowLayout.init()
        tapestry.itemSize = UIScreen.main.bounds.size
        tapestry.minimumLineSpacing = 0
        tapestry.minimumInteritemSpacing = 0
        tapestry.scrollDirection = .horizontal
        return tapestry
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mountain.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        mountain.isPagingEnabled = true
        mountain.dataSource = self
        mountain.delegate = self
        mountain.collectionViewLayout = self.tapestryFp
        mountain.showsHorizontalScrollIndicator = false
        
        mountain.register(UINib(nibName: "SonsDaCell", bundle: nil), forCellWithReuseIdentifier: "SonsDaCell")
        
        selDymBottom = RaIzesxuteController.celebration.filter { ouidds in
            ouidds["ginjinha"] as? String != nil
            
        }
        
    }
    
    @IBAction func francesinha(_ sender: UIButton) {
        JUsinFaverGo(culturalRoute: LLullaby.clickRoll,lusoToken: "")
        
    }
    
 

}


extension SonsdaController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        selDymBottom.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let portuguese = collectionView.dequeueReusableCell(withReuseIdentifier: "SonsDaCell", for: indexPath) as! SonsDaCell
        
        if let smail = selDymBottom[indexPath.row]["roots"] as? String{
            portuguese.CuscuzTradicional.kf.setImage(with: URL(string: smail))
        }
        
        if let smail = selDymBottom[indexPath.row]["ginjinha"] as? String {
            portuguese.BossaNovaFlow.kf.setImage(with: URL(string: smail))
        }
        
      
        
        portuguese.RuaCalcetada.text = selDymBottom[indexPath.row]["folklore"] as? String
        
        portuguese.RoteiroDaTerra.addTarget(self, action: #selector(micCheck), for: .touchUpInside)
        portuguese.CozinhaAfetiva.text = selDymBottom[indexPath.row]["global"] as? String
        portuguese.portuguese.tag = indexPath.row
        portuguese.portuguese.addTarget(self, action: #selector(Sjauice(ops:)), for: .touchUpInside)
        return portuguese
        
    }
    
    
    
    
    
   @objc func Sjauice(ops:UIButton)  {
     let traditionKeeper =  selDymBottom[ops.tag]["traditionKeeper"] as? Int ?? 0
       
       JUsinFaverGo(culturalRoute: LLullaby.pitchShift,lusoToken: "\(traditionKeeper)")
    }
   
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let brazilian = selDymBottom[indexPath.row]["brazilian"] as? Int ?? 12
        JUsinFaverGo(culturalRoute: LLullaby.oscillation,lusoToken: "\(brazilian)")
    }
    
    
}
