//
//  cardinfoViewController.swift
//  namecard2.0
//
//  Created by 曾意晴 on 2021/6/17.
//

import UIKit

class cardinfoViewController: UIViewController {
    
    
    @IBOutlet weak var nameinfo: UILabel!
    @IBOutlet weak var companyinfo: UILabel!
    @IBOutlet weak var titleinfo: UILabel!
    @IBOutlet weak var mobileinfo: UILabel!
    @IBOutlet weak var emailinfo: UILabel!
    @IBOutlet weak var addressinfo: UILabel!
    @IBOutlet weak var lineinfo: UILabel!
    @IBOutlet weak var fbinfo: UILabel!
    @IBOutlet weak var imageinfo: UIImageView!
    
    
    var infonamecard: Namecard?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameinfo.text = infonamecard?.name
        companyinfo.text = infonamecard?.company
        titleinfo.text = infonamecard?.job
        mobileinfo.text = infonamecard?.mobile
        emailinfo.text = infonamecard?.email
        addressinfo.text = infonamecard?.address
        lineinfo.text = infonamecard?.email
        fbinfo.text = infonamecard?.name
        if let imageName = infonamecard?.photoimage {
            imageinfo.image = UIImage(named: imageName)
    }
}
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
}


}
