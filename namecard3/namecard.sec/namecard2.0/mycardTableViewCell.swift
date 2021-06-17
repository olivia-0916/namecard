//
//  mycardTableViewCell.swift
//  namecard2.0
//
//  Created by 曾意晴 on 2021/6/14.
//

import UIKit

class mycardTableViewCell: UITableViewCell {

    @IBOutlet weak var mylabel: UILabel!
    @IBOutlet weak var myjob: UILabel!
    @IBOutlet weak var mycompany: UILabel!
    @IBOutlet weak var myemail: UILabel!
    @IBOutlet weak var mymobile: UILabel!
    @IBOutlet weak var myaddress: UILabel!
    
    @IBOutlet weak var myimageview: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
