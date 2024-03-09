//
//  HomeTableViewCell.swift
//  DemoProjectNew
//
//  Created by MONO-HYD-MAC-23 on 09/03/24.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var bgView: UIView! {
        didSet {
            bgView.addBorder(color: UIColor.white)
            bgView.addShadow()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
