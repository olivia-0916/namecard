//
//  cardinfoViewController.swift
//  namecard2.0
//
//  Created by 曾意晴 on 2021/6/17.
//

import UIKit

class cardinfoViewController: UIViewController {
    
    
    

    
    var infonamecard: Namecard?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
}
    //    var namecards : [Namecard] = []
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        infotableview.delegate = self
//        infotableview.dataSource = self
//        title = "名片內容"
//
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 250
//    }
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return namecards.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell{
//        let infocell = tableView.dequeueReusableCell(withIdentifier: "cardinfoTableViewCell", for: indexPath) as? cardinfoTableViewCell
//
//        let infonamecard = namecards[indexPath.row]
//        infocell?.infoname.text = infonamecard.name
//        infocell?.infotitle.text = infonamecard.job
//        infocell?.infocompany.text = infonamecard.company
//        infocell?.imageView?.image = UIImage(named: (infonamecard.photoimage)!)
//        infocell?.infoemail.text = infonamecard.email
//        infocell?.infomobile.text = infonamecard.mobile
//        infocell?.infoaddress.text = infonamecard.address
////        infocell?.infoline.text = infonamecard.email
////        infocell?.infofb.text = infonamecard.name
//
//        return infocell!
//    }
    
    

}
