//
//  othernamecardViewController.swift
//  namecard
//
//  Created by 麥可不可 on 2021/6/8.
//

import UIKit

class othernamecardViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var namecards = [Namecard]()

    @IBOutlet var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        

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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "othercardTableViewCell", for: indexPath) as?othercardTableViewCell
        let namecard = namecards[indexPath.row]
        cell?.namelabel.text = namecard.Name
        cell?.joblabel.text = namecard.Job
        return cell!
    }
}


extension ViewController {
private func fetchData() {
    guard let path = Bundle.main.path(forResource: "namecardContent", ofType: "plist"),
          let xml = FileManager.default.contents(atPath: path),
          let namecards = try? PropertyListDecoder().decode([Namecard].self, from: xml) else {
        return
}

}
}
