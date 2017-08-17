//
//  MainVC.swift
//  Coder-Swag
//
//  Created by Ken Krippeler on 17.08.17.
//  Copyright © 2017 Lichtverbunden. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        categoryTable.delegate = self
        categoryTable.dataSource = self
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
    }
    
   
   


}

