//
//  collectionDetailpageViewController.swift
//  namecard2.0
//
//  Created by 麥可不可 on 2021/6/14.
//

import UIKit



class collecDetailpageViewController: UIViewController {

    
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var joblabel: UILabel!
    @IBOutlet weak var companylabel: UILabel!
    @IBOutlet weak var iamgeview: UIImageView!
    @IBOutlet weak var emaillabel: UILabel!
    @IBOutlet weak var mobilelabel: UILabel!
    @IBOutlet weak var addresslabel: UILabel!
    
    var namecard: Namecard?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        namelabel.text = namecard?.name
        joblabel.text = namecard?.job
        companylabel.text = namecard?.company
        emaillabel.text = namecard?.email
        mobilelabel.text = namecard?.mobile
        addresslabel.text = namecard?.address
        if let imageName = namecard?.photoimage {
            iamgeview.image = UIImage(named: imageName)
            
        
            
        }
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
}
    
}
