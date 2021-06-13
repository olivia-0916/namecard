//
//  carcollectionViewController.swift
//  namecard2.0
//
//  Created by 麥可不可 on 2021/6/14.
//

import UIKit

class cardcollectionViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    var namecards = [Namecard]()
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //fetch
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cardcollectionTableViewCell", for: indexPath) as?cardcollectionTableViewCell
        let namecard = namecards[indexPath.row]
        cell?.namelabel.text = namecard.Name
        cell?.joblabel.text = namecard.Job
        cell?.companylabel.text = namecard.Company
        return cell!
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
