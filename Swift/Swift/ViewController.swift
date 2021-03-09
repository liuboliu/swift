//
//  ViewController.swift
//  Swift
//
//  Created by Apple on 2021/3/8.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,
UITableViewDelegate{
    var dataArray :Array <String>?

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:VVTableViewCell = tableView .dequeueReusableCell(withIdentifier: "cell") as! VVTableViewCell
        cell.label?.text = dataArray?[indexPath.row]
        return cell 
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.cyan
        dataArray = ["第一行", "第二行", "第三行", "第四行"]
        let tableView = UITableView(frame: self.view.bounds, style: .plain)
        self.view.addSubview(tableView)
        tableView.backgroundColor = .green;
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(VVTableViewCell.self, forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
    }
}

