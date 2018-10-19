//
//  ViewController.swift
//  tableview
//
// Created by Mohammadreza Sadeghi on 16/10/2018.
//  Copyright © 2018 Mohammadreza Sadeghi. All rights reserved.
//


import UIKit
var second_VC = SecondViewController()

class ViewController: UIViewController {

    @IBOutlet weak var LabelInFirstVC: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(updateLable), name: NSNotification.Name(rawValue: "TimeToUpdate"), object: nil)
    }

    @IBAction func btn(_ sender: Any) {
    second_VC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
     self.addChildViewController(second_VC)
     self.view.addSubview(second_VC.view)
    }
    
    @objc func updateLable(){
        LabelInFirstVC.text = globalVariable
    }
}

