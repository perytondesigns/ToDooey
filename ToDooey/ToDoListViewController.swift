//
//  ViewController.swift
//  ToDooey
//
//  Created by Kimberly Motyka on 6/10/19.
//  Copyright © 2019 Peryton Designs. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {
    
    let itemArray = ["Declutter","Make healthy food","Pick up Forrest"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }//end of view did load
    
    //CODE 1 - for displaying the itemArray in the table view (3 lines)
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    //CODE 2 - for
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //reusable cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoListCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
        
    }
    
    //acknowledgement that a row was clicked
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        //this adds a check mark when item was selected, and removes the checkmark once its clicked again
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        
        //greys cell that's selected
        tableView.deselectRow(at: indexPath, animated: true)
    }


    
    
    
    
} //end of class

