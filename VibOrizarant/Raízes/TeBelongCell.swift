//
//  TeBelongCell.swift
//  VibOrizarant
//
//  2025/6/9.
//

import UIKit

class TeBelongCell: UITableViewCell {

    @IBOutlet weak var fado: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        self.backgroundColor = .clear
        
        fado.layer.cornerRadius = 20
        fado.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
