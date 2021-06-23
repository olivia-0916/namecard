//
//  createcardViewController.swift
//  namecard2.0
//
//  Created by 曾意晴 on 2021/6/17.
//

import UIKit

class createcardViewController: UIViewController{

    var delegate: createcardViewControllerDelegate?
    
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
        namecard?.name = createname.text!
        namecard?.company = createcompany.text!
        namecard?.title = createtitle.text!
        namecard?.address = createaddress.text!
        namecard?.email = createemail.text!
        namecard?.mobile = createmobile.text!
        
        
//        createcompany.text = namecard?.company
//        createtitle.text = namecard?.title
//        createmobile.text = namecard?.mobile
//        createemail.text = namecard?.email
//        createaddress.text = namecard?.address
//        createline.text = namecard?.email
//        createfb.text = namecard?.name
        
        delegate?.updateMyCard(card: namecard!)
        navigationController?.popViewController(animated: true)
    }
    
    var namecard: Mycard?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createname.text = namecard?.name
        createcompany.text = namecard?.company
        createtitle.text = namecard?.title
        createmobile.text = namecard?.mobile
        createemail.text = namecard?.email
        createaddress.text = namecard?.address
        createline.text = namecard?.email
        createfb.text = namecard?.name
        
        if let imageName = namecard?.image {
            imagebutton.setImage(UIImage(named: imageName), for: .normal)
        }
        
        imagebutton.imageView?.contentMode = .scaleAspectFill
    }
}

protocol createcardViewControllerDelegate {
    func updateMyCard(card: Mycard)
}
