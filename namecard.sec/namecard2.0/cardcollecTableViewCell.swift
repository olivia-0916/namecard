//
//  cardcollectionTableViewCell.swift
//  namecard2.0
//
//  Created by 麥可不可 on 2021/6/14.
//

import UIKit

class cardcollecTableViewCell: UITableViewCell {

    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var joblabel: UILabel!
    @IBOutlet weak var companylabel: UILabel!
    @IBOutlet weak var addresslabel: UILabel!
    @IBOutlet weak var emaillabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
