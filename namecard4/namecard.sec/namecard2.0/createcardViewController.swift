//
//  createcardViewController.swift
//  namecard2.0
//
//  Created by 曾意晴 on 2021/6/17.
//

import UIKit

class createcardViewController: UIViewController, changePhotoPageViewControllerDelegate {
    


    
    
    var namecard: Mycard?
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
    
    
    @IBAction func imagebutton(_ sender: Any) {
        performSegue(withIdentifier: "gotophoto", sender: self)
    }
    
    
    
    func updatePhoto(cardimage: Mycard) {
        namecard = cardimage
        upateCreat()
        
    }
    
    func upateCreat() {
        
        if let creatimageName = namecard?.image {
            imagebutton.setImage(UIImage(named:creatimageName ), for: .normal)
            imagebutton.imageView?.contentMode = .scaleAspectFill
            
        }
        
        
    }
    
    
    
    
    
    @IBAction func donebutton(_ sender: Any) {
        if namecard == nil {
            namecard = Mycard(name: createname.text!, title: createtitle.text!, company: createcompany.text!, email: createemail.text!, address: createaddress.text!, mobile: createmobile.text!, image: nil)
        }
        
        namecard?.name = createname.text!
        namecard?.company = createcompany.text!
        namecard?.title = createtitle.text!
        namecard?.address = createaddress.text!
        namecard?.email = createemail.text!
        namecard?.mobile = createmobile.text!
        
        if let creatimageName = namecard?.image {
            imagebutton.setImage(UIImage(named:creatimageName ), for: .normal)
        }
        imagebutton.imageView?.contentMode = .scaleAspectFill
        delegate?.updateMyCard(card: namecard!)
        navigationController?.popViewController(animated: true)
    }
    
    
    
    func updatePhoto() {
        if let updatePhoto = namecard?.image {
            imagebutton.setImage(UIImage(named: updatePhoto),for: .normal)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "gotophoto":
            if let gotophoto = segue.destination as?
                changePhotoPageViewController {
                gotophoto.imagelabelchange = namecard
            }
        default:
            break
    }
    }

    
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
