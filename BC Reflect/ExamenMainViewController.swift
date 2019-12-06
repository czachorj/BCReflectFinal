//
//  ExamenMainViewController.swift
//  BC Reflect
//
//  Created by Jess on 12/1/19.
//  Copyright © 2019 Jess. All rights reserved.
//

import UIKit

class ExamenMainViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let examenTitleArray = ["Stillness: Recalling God’s Presence", "Gratitude: Expressing Thankfulness", "Reflection: Looking Back on Your Day", "Sorrow: Asking for Forgiveness", "Hopefulness: Resolving to Grow"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ExamenMainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return examenTitleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "\(examenTitleArray[indexPath.row])"
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ExamenDetailViewController
        let selectedIndexPath = tableView.indexPathForSelectedRow!
        destination.examenTitle = examenTitleArray[selectedIndexPath.row]
        destination.index = selectedIndexPath.row
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

