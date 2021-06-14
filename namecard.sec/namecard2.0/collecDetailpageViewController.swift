//
//  collectionDetailpageViewController.swift
//  namecard2.0
//
//  Created by 麥可不可 on 2021/6/14.
//

import UIKit

class collecDetailpageViewController: UIViewController {

    
    
    @IBOutlet weak var namelabel: UILabel!
    
    var namecard: Namecard?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        namelabel.text = namecard?.Name
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
}
    
}
