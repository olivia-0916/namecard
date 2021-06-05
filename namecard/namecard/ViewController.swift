//
//  ViewController.swift
//  namecard
//
//  Created by 麥可不可 on 2021/6/4.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }


}

