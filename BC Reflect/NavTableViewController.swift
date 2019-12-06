//
//  NavTableViewController.swift
//  BC Reflect
//
//  Created by Jess on 11/30/19.
//  Copyright © 2019 Jess. All rights reserved.
//

import UIKit

class NavTableViewController: UIViewController {
    
    @IBOutlet weak var gospelLabel: UILabel!
    @IBOutlet weak var examenLabel: UILabel!
    @IBOutlet weak var bibleLabel: UILabel!
    @IBOutlet weak var motivationalLabel: UILabel!
    @IBOutlet weak var oppLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        //slowly fade in each navigation item
        UIView.animate(withDuration: 2) {
            self.gospelLabel.alpha = 1
        }
        
        UIView.animate(withDuration: 4) {
            self.examenLabel.alpha = 1
        }
        
        UIView.animate(withDuration: 6) {
            self.bibleLabel.alpha = 1
        }
        
        UIView.animate(withDuration: 8) {
            self.motivationalLabel.alpha = 1
        }
        
        UIView.animate(withDuration: 10) {
            self.oppLabel.alpha = 1
        }

    }

}



