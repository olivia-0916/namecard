//
//  cardinfoViewController.swift
//  namecard2.0
//
//  Created by 曾意晴 on 2021/6/17.
//

import UIKit

class cardinfoViewController: UIViewController,createcardViewControllerDelegate{
    
    var delegate: cardinfoViewController?
    var namelableinfo: String?
    var companylableinfo: String?
    
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
    
    var infonamecard: Namecard?
    
    func passData(namelabelinfo: String) {
        nameinfo.text = namelabelinfo
    }
    func companypassData(companylableinfo: String) {
        companyinfo.text = companylableinfo
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameinfo.text = infonamecard?.name
        companyinfo.text = infonamecard?.company
        titleinfo.text = infonamecard?.job
        mobileinfo.text = infonamecard?.mobile
        emailinfo.text = infonamecard?.email
        addressinfo.text = infonamecard?.address
        lineinfo.text = infonamecard?.email
        fbinfo.text = infonamecard?.name
        if let imageName = infonamecard?.photoimage {
            imageinfo.image = UIImage(named: imageName)
    }
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let gotocreat = segue.destination as? createcardViewController {
                
                gotocreat.namelableinfo = nameinfo.text
                gotocreat.companylableinfo = companyinfo.text
                gotocreat.delegate = self

            }
        }

        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
}


}
