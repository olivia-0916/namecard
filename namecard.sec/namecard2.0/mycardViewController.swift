//
//  mycardViewController.swift
//  namecard2.0
//
//  Created by 曾意晴 on 2021/6/16.
//

import UIKit

class mycardViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var mynamecards : [Namecard] = []
    
    @IBOutlet weak var mytableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData()
        mytableview.delegate = self
        mytableview.dataSource = self
        title = "名片"
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mynamecards.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell{
        let mycell = tableView.dequeueReusableCell(withIdentifier: "mycardTableViewCell", for: indexPath) as? mycardTableViewCell
        
        let mynamecard = mynamecards[indexPath.row]
        mycell?.mylabel.text = mynamecard.name
        mycell?.myjob.text = mynamecard.job
        mycell?.mycompany.text = mynamecard.company
        mycell?.imageView?.image = UIImage(named: (mynamecard.photoimage)!)
        mycell?.myemail.text = mynamecard.email
        mycell?.mymobile.text = mynamecard.mobile
        mycell?.myaddress.text = mynamecard.address
        
        return mycell!
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          let mynamecard = mynamecards[indexPath.row]
     
         performSegue(withIdentifier: "gotocaardinfo", sender: mynamecard)
     }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        switch segue.identifier {
//        case "gotocardinfo":
//            let namecard = sender as? Namecard
//            if let cardinfoViewController = segue.destination as? cardinfoViewController{
//                cardinfoViewController.namecards = namecard
//            }
//        default:
//            break
//        }
//
//    }

}

extension mycardViewController {
private func fetchData() {
    guard let path = Bundle.main.path(forResource: "Namecards", ofType: "plist"),
          let xml = FileManager.default.contents(atPath: path),
          let namecards = try? PropertyListDecoder().decode([Namecard].self, from: xml) else {
        return
    }
    
    self.mynamecards = namecards
    mytableview.reloadData()

}
}

extension mycardViewController {
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let deleteAction = UITableViewRowAction(style: .default, title: "刪除") {
            action, index in
            
            self.mynamecards.remove(at: index.row)
            self.mytableview.reloadData()
        }
        return [deleteAction]
    }
}
