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
    @IBOutlet weak var deletebutton: UIButton!
    @IBOutlet weak var iamgeview: UIImageView!
    
    var namecard: Namecard?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        namelabel.text = namecard?.Name
        joblabel.text = namecard?.Job
        companylabel.text = namecard?.Company
        iamgeview.image = UIImage(named: (namecard?.Image)!)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
}
    
}
