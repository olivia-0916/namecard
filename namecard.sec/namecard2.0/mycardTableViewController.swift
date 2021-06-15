//
//  mycardTableViewController.swift
//  namecard2.0
//
//  Created by 曾意晴 on 2021/6/14.
//

import UIKit

class mycardTableViewController: UITableViewController/*,UITableViewDelegate,UITableViewDataSource*/ {

    var mynamecards : [Namecard] = []
    
    @IBOutlet weak var mytableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData()
        mytableview.delegate = self
        mytableview.dataSource = self
        title = "名片"

        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mynamecards.count
    }
    
    func tableView(_tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell{
        let mycell = tableView.dequeueReusableCell(withIdentifier: "mycardTableViewCell", for: indexPath) as? mycardTableViewCell
        
        let mynamecard = mynamecards[indexPath.row]
        mycell?.mylabel.text = mynamecard.name
        mycell?.myjob.text = mynamecard.job
        mycell?.mycompany.text = mynamecard.company
        
        return mycell!
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          let mynamecard = mynamecards[indexPath.row]
     
         performSegue(withIdentifier: "gotocaardinfo", sender: mynamecard)
     }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //print(sender as? String)
        switch segue.identifier {
        case "gotocaardinfo":
            let namecard = sender as? Namecard
            if let cardinfoTableViewController = segue.destination as? cardinfoTableViewController{
                cardinfoTableViewController.infonamecard = namecard
            }
        default:
            break
        }

    }

}

extension mycardTableViewController {
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
