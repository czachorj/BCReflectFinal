//
//  OpportunitiesMainViewController.swift
//  BC Reflect
//
//  Created by Jess on 12/1/19.
//  Copyright © 2019 Jess. All rights reserved.
//

import UIKit

class OpportunitiesMainViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    //there is not one single page on Campus Ministry's website that has all this data so it was impossible to pull from. Instead, I diod searching from various sources and compiled opportunities have to reflect in person.
    let titleArray = ["Taizé", "Study by the Sea", "Weekly Examen", "Taizé", "Weekly Examen", "Manresa Silent Retreat"]
    let dateArray = ["Dec 9 from 7:30 - 8:15 PM", "December 10 - 11", "Dec 11 from 9:45 - 10 PM", "Dec 16 from 7:30 - 8:15 PM", "Dec 18 from 9:45 - 10 PM", "January 8-12, 2020"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension OpportunitiesMainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "\(titleArray[indexPath.row])"
        cell.detailTextLabel?.text = "\(dateArray[indexPath.row])"
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! OppDetailViewController
        let selectedIndexPath = tableView.indexPathForSelectedRow!
        destination.oppTitle = titleArray[selectedIndexPath.row]
        destination.index = selectedIndexPath.row
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
