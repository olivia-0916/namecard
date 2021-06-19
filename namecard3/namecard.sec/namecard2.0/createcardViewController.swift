//
//  createcardViewController.swift
//  namecard2.0
//
//  Created by 曾意晴 on 2021/6/17.
//

import UIKit

class createcardViewController: UIViewController{

    var delegate: createcardViewControllerDelegate?
    var namelableinfo: String?
    var companylableinfo: String?
    
    @IBOutlet weak var createname: UITextField!
    @IBOutlet weak var createcompany: UITextField!
    @IBOutlet weak var createtitle: UITextField!
    @IBOutlet weak var createmobile: UITextField!
    @IBOutlet weak var createemail: UITextField!
    @IBOutlet weak var createaddress: UITextField!
    @IBOutlet weak var createline: UITextField!
    @IBOutlet weak var createfb: UITextField!
    
    @IBAction func donebutton(_ sender: Any) {
        delegate?.passData(namelabelinfo: createname.text!)
        delegate?.companypassData(companylableinfo: createcompany.text!)
        navigationController?.popViewController(animated: true)
        
    }
    var namecard: Namecard?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createname.text = namelableinfo
        createcompany.text = companylableinfo
        
    }
    


}
protocol createcardViewControllerDelegate {
    func passData(namelabelinfo: String)
    func companypassData(companylableinfo: String)
}
