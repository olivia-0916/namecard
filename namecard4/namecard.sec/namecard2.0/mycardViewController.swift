//
//  mycardViewController.swift
//  namecard2.0
//
//  Created by 曾意晴 on 2021/6/16.
//

import UIKit


class mycardViewController: UIViewController,
                            UITableViewDelegate,
                            UITableViewDataSource,
                            cardinfoViewControllerDelegate,
                            createcardViewControllerDelegate {
    var mynamecards : [Mycard] = []
    
    @IBOutlet weak var mytableview: UITableView!
    
    @IBAction func newcard(_ sender: Any) {
        performSegue(withIdentifier: "gotocreatecard", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData()
        mytableview.delegate = self
        mytableview.dataSource = self
        title = "名片"
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
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
        mycell?.myjob.text = mynamecard.title
        mycell?.mycompany.text = mynamecard.company
        
        if let imageName = mynamecard.image, let image =  UIImage(named: imageName) {
            mycell?.myimageview?.image = image
        }

        mycell?.mymobile.text = mynamecard.mobile
        
        return mycell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "gotocaardinfo", sender: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let deleteAction = UITableViewRowAction(style: .default, title: "刪除") {
            action, index in
            
            self.mynamecards.remove(at: index.row)
            self.mytableview.reloadData()
        }
        return [deleteAction]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "gotocaardinfo":
            if let index = sender as? Int,
               let cardinfoViewController = segue.destination as?
            cardinfoViewController {
                cardinfoViewController.delegate = self
                
                let namecard = mynamecards[index]
                cardinfoViewController.index = index
                cardinfoViewController.infonamecard = namecard
            }
        case "gotocreatecard":
            if let createCardPage = segue.destination as? createcardViewController {
                createCardPage.delegate = self
            }
            
        default:
            break
        }
    }
    
    func updateCard(namecard: Mycard, at index: Int) {
        mynamecards[index] = namecard
        //mynamecards.append(namecard.self)
        mytableview.reloadData()
    }
    
    // 新增卡片
    func updateMyCard(card: Mycard) {
        mynamecards.append(card)
        mytableview.reloadData()
    }
}

extension mycardViewController {
    private func fetchData() {
        guard let path = Bundle.main.path(forResource: "mycard", ofType: "plist"),
              let xml = FileManager.default.contents(atPath: path),
              let namecards = try? PropertyListDecoder().decode([Mycard].self, from: xml) else {
            return
        }
    
        self.mynamecards = namecards
    
        mytableview.reloadData()
    }
}
