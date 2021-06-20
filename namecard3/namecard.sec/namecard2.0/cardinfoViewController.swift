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
    
    var infonamecard: Mycard?
    
    
    func passData(namelabelinfo: String) {
        nameinfo.text = namelabelinfo
    }
    func companypassData(companylableinfo: String) {
        companyinfo.text = companylableinfo
    }
    
    func titlepassData(titlelabelinfo: String){
        titleinfo.text = titlelabelinfo
    }
    
    func mobilepassData(mobilelabelinfo: String){
        mobileinfo.text = mobilelabelinfo
    }
    
    func emailpassData(emaillabelinfo: String){
        emailinfo.text = emaillabelinfo
    }
    
    func addresspassData(addresslabelinfo: String){
        addressinfo.text = addresslabelinfo
    }
    
    func linepassData(linelabelinfo: String){
        lineinfo.text = linelabelinfo
    }
    
    func fbpassData(fblabelinfo: String){
        fbinfo.text = fblabelinfo
    }
    
    func imagepassData(imagelabelinfo: UIImage){
        imageinfo.image = imagelabelinfo
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
                
                gotocreat.namelableinfo = nameinfo.text
                gotocreat.companylableinfo = companyinfo.text
                gotocreat.titlelabelinfo = titleinfo.text
                gotocreat.mobilelabelinfo = mobileinfo.text
                gotocreat.emaillabelinfo = emailinfo.text
                gotocreat.addresslabelinfo = addressinfo.text
                gotocreat.linelabelinfo = lineinfo.text
                gotocreat.fblabelinfo = fbinfo.text
                
                
                
                gotocreat.delegate = self

            }
        }

        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
}


}
