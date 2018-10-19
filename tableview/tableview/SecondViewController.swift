//
//  SecondViewController.swift
//  tableview
//
//  Created by Mohammadreza Sadeghi on 16/10/2018.
//  Copyright © 2018 Mohammadreza Sadeghi. All rights reserved.

import UIKit
var globalVariable:String = ""

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayForFillTableView.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("ShowDetailsTableViewCell", owner: self, options: nil)?.first as! ShowDetailsTableViewCell
        let changeColor = indexPath.row % 2
        if(changeColor == 0){
            cell.showDetailsInTB.backgroundColor = UIColor.white
        }
        else{
           cell.showDetailsInTB?.backgroundColor = UIColor.green
        }
        cell.showDetailsInTB?.text = arrayForFillTableView[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        globalVariable = arrayForFillTableView[indexPath.row]
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "TimeToUpdate"), object: nil)
        second_VC.view.removeFromSuperview()
        
    }
    
    
    @IBOutlet weak var showTb: UITableView!
    var arrayForFillTableView = ["Rico","Angela","Michael","My name is very very very very long and I can not even tell you how to pronounce :D"," Anna"]
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    showTb.delegate = self
    showTb.dataSource = self
    self.showTb.estimatedRowHeight = 111.0
    self.showTb.rowHeight = UITableViewAutomaticDimension
    self.showTb.reloadData()
       
    }


}
