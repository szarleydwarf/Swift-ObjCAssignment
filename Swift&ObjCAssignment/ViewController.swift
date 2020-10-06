//
//  ViewController.swift
//  Swift&ObjCAssignment
//
//  Created by The App Experts on 06/10/2020.
//  Copyright © 2020 The App Experts. All rights reserved.
//

import UIKit

/*
 Create an application which parses the given JSON file and displays the data in a table view
 Requirements
 • The Table View will display the;
 o Name of the account
 o Number of the account
 o Account Balance with the correct currency
 
 • The application should be written using MVVM
 o The View will be in swift
 o The ViewModel and Model will in objective-c
 */

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        
        
        return cell
    }
    

}

