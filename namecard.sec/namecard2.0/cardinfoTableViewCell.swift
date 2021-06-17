//
//  cardinfoTableViewCell.swift
//  namecard2.0
//
//  Created by 曾意晴 on 2021/6/15.
//

import UIKit

class cardinfoTableViewCell: UITableViewCell {

    
    var namecards : Namecard?
    
    @IBOutlet weak var infoimage: UIImageView!
    @IBOutlet weak var infoname: UILabel!
    @IBOutlet weak var infocompany: UILabel!
    @IBOutlet weak var infotitle: UILabel!
    @IBOutlet weak var infomobile: UILabel!
    @IBOutlet weak var infoemail: UILabel!
    @IBOutlet weak var infoaddress: UILabel!
    @IBOutlet weak var infoline: UILabel!
    @IBOutlet weak var infofb: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        infoname.text = infonamecard?.name
//        infocompany.text = infonamecard?.company
//        infotitle.text = infonamecard?.job
//        infomobile.text = infonamecard?.mobile
//        infoemail.text = infonamecard?.email
//        infoaddress.text = infonamecard?.address
//        infoline.text = infonamecard?.email
//        infofb.text = infonamecard?.name
//        if let imageName = infonamecard?.photoimage {
//            infoimage.image = UIImage(named: imageName)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
