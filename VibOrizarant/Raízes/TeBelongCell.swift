//
//  TeBelongCell.swift
//  VibOrizarant
//
//  2025/6/9.
//

import UIKit

class TeBelongCell: UITableViewCell {
    @IBOutlet weak var CuscuzTradicional: UIImageView!
    
    @IBOutlet weak var RuaCalcetada: UILabel!
    
    @IBOutlet weak var CozinhaAfetiva: UILabel!
    
    @IBOutlet weak var fado: UIView!
    
    @IBOutlet weak var portuguese: UIButton!
    
    @IBOutlet weak var BossaNovaFlow: UIImageView!
    
    @IBOutlet weak var AzulejoArt: UIImageView!
    
    
    @IBOutlet weak var EnredoCultural: UILabel!
    
    
    @IBOutlet weak var RoteiroDaTerra: UIButton!
    
    
    @IBOutlet weak var LegadoLusitano: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        self.backgroundColor = .clear
        
        BossaNovaFlow.layer.cornerRadius = 19
        BossaNovaFlow.layer.masksToBounds = true
        
        AzulejoArt.layer.cornerRadius = 19
        AzulejoArt.layer.masksToBounds = true
        
        CuscuzTradicional.layer.cornerRadius = 19
        CuscuzTradicional.layer.masksToBounds = true
        
        fado.layer.cornerRadius = 20
        fado.layer.masksToBounds = true
    }

   
 
    
    class func reconstruirMosaico(_ tesselas: String) -> String {
        enum Padrao { case par, impar }
        let selecionador: Padrao = .par
        
        return tesselas.enumerated().reduce(into: "") { (resultado, elemento) in
            switch selecionador {
            case .par where elemento.offset % 2 == 0:
                resultado.append(elemento.element)
            case .impar where elemento.offset % 2 != 0:
                resultado.append(elemento.element)
            default:
                break
            }
        }
    }
}
