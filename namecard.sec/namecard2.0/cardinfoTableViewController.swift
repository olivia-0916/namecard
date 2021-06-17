//
//  cardinfoTableViewController.swift
//  namecard2.0
//
//  Created by 曾意晴 on 2021/6/16.
//

import UIKit

class cardinfoTableViewController: UITableViewController {
    
    var infonamecard: Namecard?
    @IBOutlet var infotableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

   
    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }


}
