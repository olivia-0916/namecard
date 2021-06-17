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
<<<<<<< HEAD
    @IBOutlet weak var imageview: UIImageView!
=======
    @IBOutlet weak var myimage: UIImageView!
    @IBOutlet weak var myemail: UILabel!
    @IBOutlet weak var mymobile: UILabel!
    @IBOutlet weak var myaddress: UILabel!
>>>>>>> 6e49f7e5842eb29554e2a4db54865d63bd75d995
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
