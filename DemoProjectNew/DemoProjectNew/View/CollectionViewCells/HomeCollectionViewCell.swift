//
//  HomeCollectionViewCell.swift
//  DemoProjectNew
//
//  Created by MONO-HYD-MAC-23 on 07/03/24.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var bgView: UIView! {
        didSet {
            bgView.addBorder(color: UIColor.white)
            bgView.addShadow()
        }
    }
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var coachNameLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var xpLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    func assignData(data: Goals) {
        nameLbl.text = data.name
        coachNameLbl.text = data.coachName
        typeLbl.text = data.type
        xpLbl.text = "\(data.toalXp) XP"
        timeLbl.text = "\(data.totalTime) mins"
     }
}
