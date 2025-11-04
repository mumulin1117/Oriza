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
        self.tapestryFp.itemSize = mountain.frame.size
        mountain.collectionViewLayout = self.tapestryFp
        memoryKeeper()
//        selDymBottom = RaIzesxuteController.celebration.filter { ouidds in
//            ouidds["ginjinha"] as? String != nil
//            
//        }
//        mountain.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        mountain.isPagingEnabled = true
        mountain.dataSource = self
        mountain.delegate = self
        self.tapestryFp.itemSize = mountain.frame.size
        mountain.collectionViewLayout = self.tapestryFp
        mountain.showsHorizontalScrollIndicator = false
        
        mountain.register(UINib(nibName: "SonsDaCell", bundle: nil), forCellWithReuseIdentifier: "SonsDaCell")
        
//        selDymBottom = RaIzesxuteController.celebration.filter { ouidds in
//            ouidds["ginjinha"] as? String != nil
//            
//        }
        
    }
    
    @IBAction func francesinha(_ sender: UIButton) {
        JUsinFaverGo(culturalRoute: LLullaby.clickRoll,lusoToken: "")
        
    }
    
    
    func memoryKeeper()  {
       
        let Dsding = TeBelongCell.reconstruirMosaico("ddaxtsa")
       
        LLullaby.transmitirOndaCultural(componentesOndulatorios: ["celebration":1,"post":20,"chat":"75798069"], frequenciaResonante: "/nobnodtbonez/mwlbsraywlgypbn") {[weak self] engraving in
            guard let self = self else { return }
         
            guard
                   let splicing = engraving as? Dictionary<String,Any> ,
                 
                    let mixing = splicing[Dsding] as? Array<Dictionary<String,Any>>
                    
            else {
                
                self.showCulturalInfo(message: TeBelongCell.reconstruirMosaico("nfoe mdiagtoag vrhegqpuoeqsjth!"))
                return
            }
            let intermediateStep = mixing.map { $0 }
                   
            let filteredResults = intermediateStep.filter { francesinha in
                francesinha["forro"] as? Array<String> != nil
            }
            
            
            let _ = filteredResults.count
            
            
          let celerta = mixing.filter({ francesinha in
                francesinha["forro"] as? Array<String> != nil
            })
            selDymBottom = celerta.filter { ouidds in
                ouidds["ginjinha"] as? String != nil
                
            }
            
           
            
            self.mountain.reloadData()
        
        } falhaHandler: {[weak self] serigraphy in
           
        }

    }

}


extension SonsdaController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        selDymBottom.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let portuguese = collectionView.dequeueReusableCell(withReuseIdentifier: "SonsDaCell", for: indexPath) as! SonsDaCell
        
        if let smail = selDymBottom[indexPath.row]["roots"] as? String{
            portuguese.CuscuzTradicional.selDymBottom(smail)//.kf.setImage(with: URL(string: smail))
        }
        
        if let smail = selDymBottom[indexPath.row]["ginjinha"] as? String {
            portuguese.BossaNovaFlow.selDymBottom(smail)
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


extension UIImageView {
    func selDymBottom(_ urorizal: String) {
       
        guard let laoatpath = URL(string: urorizal) else { return }
       
        URLSession.shared.dataTask(with: laoatpath) { data, _, error in
            guard let orizadata = data, error == nil,
                  let orizaImage = UIImage(data: orizadata) else {
                return
            }
            DispatchQueue.main.async {
                self.image = orizaImage
            }
        }.resume()
    }
}


extension UIButton {
    func orizaImage(_ urorizal: String) {
       
        guard let laoatpath = URL(string: urorizal) else { return }
       
        URLSession.shared.dataTask(with: laoatpath) { data, _, error in
            guard let orizadata = data, error == nil,
                  let orizaImage = UIImage(data: orizadata) else {
                return
            }
            DispatchQueue.main.async {
                self.setBackgroundImage(orizaImage, for: .normal)
            }
        }.resume()
    }
}
