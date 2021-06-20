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
    var titlelabelinfo: String?
    var mobilelabelinfo: String?
    var emaillabelinfo: String?
    var addresslabelinfo: String?
    var linelabelinfo: String?
    var fblabelinfo: String?

    
    
    @IBOutlet weak var createname: UITextField!
    @IBOutlet weak var createcompany: UITextField!
    @IBOutlet weak var createtitle: UITextField!
    @IBOutlet weak var createmobile: UITextField!
    @IBOutlet weak var createemail: UITextField!
    @IBOutlet weak var createaddress: UITextField!
    @IBOutlet weak var createline: UITextField!
    @IBOutlet weak var createfb: UITextField!
    @IBOutlet weak var imagebutton: UIButton!
    
    @IBAction func donebutton(_ sender: Any) {
        
        delegate?.passData(namelabelinfo: createname.text!)
        delegate?.companypassData(companylableinfo: createcompany.text!)
        delegate?.titlepassData(titlelabelinfo: createtitle.text!)
        delegate?.mobilepassData(mobilelabelinfo: createmobile.text!)
        delegate?.emailpassData(emaillabelinfo: createemail.text!)
        delegate?.addresspassData(addresslabelinfo: createaddress.text!)
        delegate?.linepassData(linelabelinfo: createline.text!)
        delegate?.fbpassData(fblabelinfo: createfb.text!)
        navigationController?.popViewController(animated: true)
        
    }
    
    var namecard: Mycard?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createname.text = namelableinfo
        createcompany.text = companylableinfo
        createtitle.text = titlelabelinfo
        createmobile.text = mobilelabelinfo
        createemail.text = emaillabelinfo
        createaddress.text = addresslabelinfo
        createline.text = linelabelinfo
        createfb.text = fblabelinfo

        
        imagebutton.imageView?.contentMode = .scaleAspectFill
        

    }
    


}

protocol createcardViewControllerDelegate {
    func passData(namelabelinfo: String)
    func companypassData(companylableinfo: String)
    func titlepassData(titlelabelinfo: String)
    func mobilepassData(mobilelabelinfo: String)
    func emailpassData(emaillabelinfo: String)
    func addresspassData(addresslabelinfo: String)
    func linepassData(linelabelinfo: String)
    func fbpassData(fblabelinfo: String)
}
