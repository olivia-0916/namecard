//
//  collectionDetailpageViewController.swift
//  namecard2.0
//
//  Created by 麥可不可 on 2021/6/14.
//

import UIKit



class collecDetailpageViewController: UIViewController {

    
    @IBOutlet weak var namelable: UILabel!
    @IBOutlet weak var joblable: UILabel!
    @IBOutlet weak var companylable: UILabel!
    @IBOutlet weak var iamgeview: UIImageView!
    @IBOutlet weak var emaillable: UILabel!
    @IBOutlet weak var mobilelable: UILabel!
    @IBOutlet weak var addresslable: UILabel!
    
    @IBOutlet weak var linelable: UILabel!
    
    @IBOutlet weak var fblable: UILabel!
    var namecard: Namecard?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        namelable.text = namecard?.name
        joblable.text = namecard?.job
        companylable.text = namecard?.company
        emaillable.text = namecard?.email
        mobilelable.text = namecard?.mobile
        addresslable.text = namecard?.address
        linelable.text = namecard?.line
        fblable.text = namecard?.fb
        
        if let imageName = namecard?.photoimage {
            iamgeview.image = UIImage(named: imageName)
            
        
            
        }
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
}
    
}
