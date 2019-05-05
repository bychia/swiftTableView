//
//  ViewController.swift
//  swiftTableView
//
//  Created by ChrisChia on 5/5/19.
//  Copyright © 2019 swiftTableView. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    struct CObj {
        let id: String?
        let otp: String?
    }
    
    var list = [CObj]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "idCell")
        cell.textLabel?.text = list[indexPath.row].id
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var UITableView1: UITableView!
    
    @IBAction func fetchOTP(_ sender: UIButton) {
        let obj1 = CObj(id: "e2386d9b-5064-4a55-b994-72c282787205", otp: "234156")
        let obj2 = CObj(id: "44067912-91a5-439c-94a1-501a96e544dd", otp: "234156")
        list.append(obj1)
        list.append(obj2)
        UITableView1.reloadData()
    }
    
}

