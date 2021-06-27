//
//  collectionDetailpageViewController.swift
//  namecard2.0
//
//  Created by 麥可不可 on 2021/6/14.
//

import UIKit



class collecDetailpageViewController: UIViewController {

    
    @IBOutlet weak var iamgeview: UIImageView!
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var companylabel: UILabel!
    @IBOutlet weak var joblabel: UILabel!
    @IBOutlet weak var mobilelabel: UILabel!
    @IBOutlet weak var emaillabel: UILabel!
    @IBOutlet weak var addresslabel: UILabel!
    @IBOutlet weak var linelabel: UILabel!
    @IBOutlet weak var fblabel: UILabel!
    @IBOutlet weak var detailview: UIView!
    

    var namecard: Namecard?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailview.layer.cornerRadius = 25
        
        namelabel.text = namecard?.name
        joblabel.text = namecard?.job
        companylabel.text = namecard?.company
        emaillabel.text = namecard?.email
        mobilelabel.text = namecard?.mobile
        addresslabel.text = namecard?.address
        linelabel.text = namecard?.line
        fblabel.text = namecard?.fb
        
        if let imageName = namecard?.photoimage {
            iamgeview.image = UIImage(named: imageName)
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
}
    
}
