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
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 150.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell
        {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            
            return cell
        }
        else
        {
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
    }
    
   
   


}

