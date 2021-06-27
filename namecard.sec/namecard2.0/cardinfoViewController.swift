//
//  cardinfoViewController.swift
//  namecard2.0
//
//  Created by 曾意晴 on 2021/6/17.
//

import UIKit

protocol cardinfoViewControllerDelegate {
    func updateCard(namecard: Mycard, at index: Int)
}

class cardinfoViewController: UIViewController, createcardViewControllerDelegate{
    
    var delegate: cardinfoViewControllerDelegate?
    var namelableinfo: String?
    var companylableinfo: String?
    var titlelabelinfo: String?
    var mobilelabelinfo: String?
    var emaillabelinfo: String?
    var addresslabelinfo: String?
    var linelabelinfo: String?
    var fblabelinfo: String?
    var imagelabelinfo: UIImage?
    
    
    @IBAction func gotocreat(_ sender: Any) {
        performSegue(withIdentifier: "infotocreate", sender: self)

    }
    
    @IBOutlet weak var nameinfo: UILabel!
    @IBOutlet weak var companyinfo: UILabel!
    @IBOutlet weak var titleinfo: UILabel!
    @IBOutlet weak var mobileinfo: UILabel!
    @IBOutlet weak var emailinfo: UILabel!
    @IBOutlet weak var addressinfo: UILabel!
    @IBOutlet weak var lineinfo: UILabel!
    @IBOutlet weak var fbinfo: UILabel!
    @IBOutlet weak var imageinfo: UIImageView!
    @IBOutlet weak var infoview: UIView!
    
    
    var infonamecard: Mycard?
    var index: Int = 0
    
    func updateMyCard(card: Mycard) {
        infonamecard = card
        updateView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoview.layer.cornerRadius = 25
        updateView()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        delegate?.updateCard(namecard: infonamecard!, at: index)
    }
    
    func updateView() {
        nameinfo.text = infonamecard?.name
        companyinfo.text = infonamecard?.company
        titleinfo.text = infonamecard?.title
        mobileinfo.text = infonamecard?.mobile
        emailinfo.text = infonamecard?.email
        addressinfo.text = infonamecard?.address
        lineinfo.text = infonamecard?.email
        fbinfo.text = infonamecard?.name
    
        if let imageName = infonamecard?.image {
            imageinfo.image = UIImage(named: imageName)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let gotocreat = segue.destination as? createcardViewController {
            gotocreat.namecard = infonamecard
            gotocreat.delegate = self
        }
    }

        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
