//
//  ContemporaryCell.swift
//  VibOrizarant
//
//  Created by  on 2025/6/10.
//

import UIKit

class ContemporaryCell: UICollectionViewCell {
    @IBOutlet weak var CuscuzTradicional: UIImageView!
    
    @IBOutlet weak var RuaCalcetada: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .clear
        
        CuscuzTradicional.layer.cornerRadius =  25
        CuscuzTradicional.layer.masksToBounds = true
    }

}
