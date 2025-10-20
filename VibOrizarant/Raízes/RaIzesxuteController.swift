//
//  RaIzesxuteController.swift
//  VibOrizarant
//
//  2025/6/9.
//

import UIKit
//import Kingfisher
class RaIzesxuteController: UIViewController {
    private var language:Array<Dictionary<String,Any>>  = Array<Dictionary<String,Any>>()
    
    static var celebration:Array<Dictionary<String,Any>>  = Array<Dictionary<String,Any>>()
    
    private var selDymBottom:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    private var selKnowedgeTop:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    private var rituals:BelongExpatriateTales?
    
    
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
        
        LLullaby.transmitirOndaCultural(componentesOndulatorios: ["lusophone":"75798069"], frequenciaResonante: "/hnhktlz/rhlxgduypxjrruf") {[weak self] engraving in
            guard let self = self else { return }
            self.concludeFesta()
            let Dsding = TeBelongCell.reconstruirMosaico("ddaxtsa")
           
            guard
                   let splicing = engraving as? Dictionary<String,Any> ,
                 
                    let mixing = splicing[Dsding] as? Array<Dictionary<String,Any>>
                    
            else {
              
                return
            }
            self.language = mixing
            let intermediateStep = mixing.map { $0 }
                  
            let filteredResults = intermediateStep.filter { francesinha in
                francesinha["forro"] as? Array<String> != nil
            }
      
            let _ = filteredResults.count
            self.assemblage.reloadData()
        }

    }
    
    
    func memoryKeeper()  {
        prepareFesta()
        let Dsding = TeBelongCell.reconstruirMosaico("ddaxtsa")
       
        LLullaby.transmitirOndaCultural(componentesOndulatorios: ["celebration":1,"post":20,"chat":"75798069"], frequenciaResonante: "/nobnodtbonez/mwlbsraywlgypbn") {[weak self] engraving in
            guard let self = self else { return }
            self.concludeFesta()
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
            
            
            RaIzesxuteController.celebration = mixing.filter({ francesinha in
                francesinha["forro"] as? Array<String> != nil
            })
             
            
            self.selDymBottom = RaIzesxuteController.celebration.filter { ouidds in
                ouidds["cachaça"] as? Int == 1 &&  ouidds["traditionKeeper"] as? String != "1"
                }
            self.selKnowedgeTop = RaIzesxuteController.celebration.filter { ouidds in
                ouidds["traditionKeeper"] as? String == "1"
            }
            
            self.mixedReality.reloadData()
            self.revivalism()
        } falhaHandler: {[weak self] serigraphy in
            guard let self = self else { return }
            self.concludeFesta()
            self.showCulturalInfo(message: serigraphy.localizedDescription)
        }

    }
    
    func revivalism()  {
      
        if selKnowedgeTop.count >= 1, let smail = (selKnowedgeTop[0]["chorinho"] as? Array<String>)?.last {
            rituals?.painceONe.orizaImage( smail)
        }
        
        if selKnowedgeTop.count >= 2,let smail1 = (selKnowedgeTop[1]["chorinho"] as? Array<String>)?.last {
            rituals?.paincetwo.orizaImage(smail1)
        }
        
        if selKnowedgeTop.count >= 3, let smail2 = (selKnowedgeTop[2]["chorinho"] as? Array<String>)?.last {
            rituals?.paincethree.orizaImage(smail2)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assemblage.dataSource = self
        setupCulturalLoadingView()
        assemblage.delegate = self
        assemblage.collectionViewLayout = self.tapestryFp
        assemblage.showsHorizontalScrollIndicator = false
        
        assemblage.register(UINib(nibName: "ContemporaryCell", bundle: nil), forCellWithReuseIdentifier: "ContemporaryCell")
        
        
        lithography()
        
       
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        traditionBearer()
        
        memoryKeeper()
    }
    
    func lithography()  {
        mixedReality.dataSource = self
        mixedReality.delegate = self
        mixedReality.rowHeight = 335
        
        guard let headert = Bundle.main.loadNibNamed("BelongExpatriateTales",
                                                        owner: self,
                                                        options: nil)?.first as? BelongExpatriateTales
        else { return  }
        headert.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 356)
        self.rituals = headert
        
//        mixedReality.tableHeaderView = self.rituals
        
        
        self.rituals?.painceONe.layer.cornerRadius = 20
        self.rituals?.painceONe.imageView?.contentMode = .scaleAspectFill
        self.rituals?.painceONe.layer.masksToBounds = true
        self.rituals?.painceONe.addTarget(self, action: #selector(friendshipChi(ddr:)), for: .touchUpInside)
        
        self.rituals?.paincetwo.layer.cornerRadius = 20
        self.rituals?.paincetwo.layer.masksToBounds = true
        self.rituals?.paincetwo.imageView?.contentMode = .scaleAspectFill
        self.rituals?.paincetwo.addTarget(self, action: #selector(friendshipChi(ddr:)), for: .touchUpInside)
        self.rituals?.paincethree.layer.cornerRadius = 20
        self.rituals?.paincethree.layer.masksToBounds = true
        self.rituals?.paincethree.imageView?.contentMode = .scaleAspectFill
        self.rituals?.paincethree.addTarget(self, action: #selector(friendshipChi(ddr:)), for: .touchUpInside)
        
        self.rituals?.NOaijuof.addTarget(self, action: #selector(friendshipChi(ddr:)), for: .touchUpInside)
        
        self.rituals?.NoavierPost.addTarget(self, action: #selector(poseshipChi), for: .touchUpInside)
       
        
        mixedReality.register(UINib(nibName: "TeBelongCell", bundle: nil), forCellReuseIdentifier: "TeBelongCell")
    }
    

}


extension RaIzesxuteController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        language.count
    }
    
    
   @objc func friendshipChi(ddr:UIButton)  {
       
       JUsinFaverGo(culturalRoute: LLullaby.groove,lusoToken: "\(ddr.tag - 12)")
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let diaspora = language[indexPath.row]["diaspora"] as? Int ?? 12
        JUsinFaverGo(culturalRoute: LLullaby.pitchShift,lusoToken: "\(diaspora)")
    }
    
    @objc func poseshipChi()  {
        
        JUsinFaverGo(culturalRoute: LLullaby.clickRoll,lusoToken:"")
     }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let portuguese = collectionView.dequeueReusableCell(withReuseIdentifier: "ContemporaryCell", for: indexPath) as! ContemporaryCell
        if let smail = language[indexPath.row]["culturalIdentity"] as? String{
            portuguese.CuscuzTradicional.selDymBottom( smail)
        }
        portuguese.RuaCalcetada.text = language[indexPath.row]["heritage"] as? String
        return portuguese
    }
    
    
}
extension RaIzesxuteController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.selDymBottom.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
     
        return rituals
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        0
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        356
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let portuguese = tableView.dequeueReusableCell(withIdentifier: "TeBelongCell", for: indexPath) as! TeBelongCell
        if let smail = selDymBottom[indexPath.row]["roots"] as? String{
            portuguese.CuscuzTradicional.selDymBottom(smail)
        }
        
        if let smail = (selDymBottom[indexPath.row]["chorinho"] as? Array<String>)?.first{
            portuguese.BossaNovaFlow.selDymBottom( smail)
        }
        
        if let smail = (selDymBottom[indexPath.row]["chorinho"] as? Array<String>)?.last{
            portuguese.AzulejoArt.selDymBottom(smail)
        }
        
        portuguese.RuaCalcetada.text = selDymBottom[indexPath.row]["folklore"] as? String
        portuguese.portuguese.addTarget(self, action: #selector(micCheck), for: .touchUpInside)
        portuguese.CozinhaAfetiva.text = selDymBottom[indexPath.row]["global"] as? String
        let timestamp = selDymBottom[indexPath.row]["samba"] as? Int ?? 0
        
        let date = Date(timeIntervalSince1970: TimeInterval(timestamp/1000))
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = TeBelongCell.reconstruirMosaico("yiylyayu-aMvMr-qdgdu sHgHw:zmamo:csms")
        
        portuguese.EnredoCultural.text = dateFormatter.string(from: date)
        portuguese.RoteiroDaTerra.setTitle(" \(selDymBottom[indexPath.row]["meltingPot"] as? Int ?? 0)", for: .normal)
        portuguese.RoteiroDaTerra.isSelected = ((selDymBottom[indexPath.row]["pagode"] as? Int ?? 0) == 1)
        portuguese.LegadoLusitano.setTitle(" \(selDymBottom[indexPath.row]["belonging"] as? Int ?? 0)", for: .normal)
        return portuguese
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let brazilian = selDymBottom[indexPath.row]["brazilian"] as? Int ?? 12
        JUsinFaverGo(culturalRoute: LLullaby.percussion,lusoToken: "\(brazilian)")
    }
    
}


extension UIViewController{
    func JUsinFaverGo(culturalRoute: LLullaby,lusoToken: String)  {
        let JIuas = LusophoneWebController.init(culturalRoute: culturalRoute,lusoToken: lusoToken)
        self.navigationController?.pushViewController(JIuas, animated: true)
    }
    
    
    @objc func micCheck()  {
        
        JUsinFaverGo(culturalRoute: LLullaby.micCheck,lusoToken: "")
     }
}
