//
//  carcollectionViewController.swift
//  namecard2.0
//
//  Created by 麥可不可 on 2021/6/14.
//

import UIKit

class cardcollecViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    var namecards = [Namecard]()
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //fet
        tableview.delegate = self
        tableview.dataSource = self


    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namecards.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cardcollecTableViewCell", for: indexPath) as?cardcollecTableViewCell
        let namecard = namecards[indexPath.row]
        cell?.namelabel.text = namecard.Name
        cell?.joblabel.text = namecard.Job
        cell?.companylabel.text = namecard.Company
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          let namecard = namecards[indexPath.row]
     
         performSegue(withIdentifier: "gotocollecdetailpage", sender: namecard)
     }
     
     
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         
         //print(sender as? String)
         switch segue.identifier {
         case "gotocollecdetailpage":
             let namecard = sender as? Namecard
             if let collecDetailpageViewController = segue.destination as? collecDetailpageViewController{
                collecDetailpageViewController.namecard = namecard
             }
         default:
             break
         }

     }
    
    


}

extension ViewController {
private func fetchData() {
    guard let path = Bundle.main.path(forResource: "Namecards", ofType: "plist"),
          let xml = FileManager.default.contents(atPath: path),
          let namecards = try? PropertyListDecoder().decode([Namecard].self, from: xml) else {
        return
    }
//    self.namecards = namecards
//    tableView.reloadData()
}

}
