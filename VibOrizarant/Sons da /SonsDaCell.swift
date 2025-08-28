//
//  SonsDaCell.swift
//  VibOrizarant
//
//  Created by  on 2025/6/11.
//

import UIKit

class SonsDaCell: UICollectionViewCell {
    @IBOutlet weak var CuscuzTradicional: UIImageView!
    
    @IBOutlet weak var RuaCalcetada: UILabel!
    
    @IBOutlet weak var CozinhaAfetiva: UILabel!
    
 
    
    @IBOutlet weak var portuguese: UIButton!
    

    @IBOutlet weak var BossaNovaFlow: UIImageView!
    

    
    
    @IBOutlet weak var RoteiroDaTerra: UIButton!
    
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        self.backgroundColor = .clear
        
     
        CuscuzTradicional.layer.cornerRadius = 19
        CuscuzTradicional.layer.masksToBounds = true
        
     
    }

   
    
}
