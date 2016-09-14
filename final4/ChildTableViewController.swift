//
//  ChildTableViewController.swift
//  final4
//
//  Created by Symonne Fontenot on 5/2/16.
//  Copyright © 2016 Symonne Fontenot. All rights reserved.
//

import UIKit

class ChildTableViewController: UITableViewController {

    // MARK: Properties
    var children = [Child]()



    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = editButtonItem()
        
        loadSampleChildren()
        
    }//end view did load
    
    
    
    func loadSampleChildren(){
        let child1 = Child(name: "Symonne", dob: "4-02-1993", faveColor: "light blue", height: "5'5", weight: "150lbs", medAller: "Penicillin, Codeine", foodAller: "None", seasAller: "Pollen?", genAller: "None", immunz: "Up to date")
        children.append(child1!)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return children.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "ChildTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! ChildTableViewCell

        let child = children[indexPath.row]
        cell.nameLable.text = child.name

        return cell
    }
    

    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }


    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            children.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }

    
    // MARK: - Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowDetail"{
            let childDetailViewController = segue.destinationViewController as! ChildDetailViewController
            if let selectedChildCell = sender as? ChildTableViewCell{
                let indexPath = tableView.indexPathForCell(selectedChildCell)!
                let selectedChild = children[indexPath.row]
                childDetailViewController.child = selectedChild
            }
        }

    }
    
    
    @IBAction func unwindToChildList(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.sourceViewController as? ChildViewController, child = sourceViewController.child{
            if let selectedChildTab = tableView.indexPathForSelectedRow{
                children[selectedChildTab.row] = child
                tableView.reloadRowsAtIndexPaths([selectedChildTab], withRowAnimation: .None)
                }
        else{
            let newIndexPath = NSIndexPath(forRow: children.count, inSection: 0)
                children.append(child)
                tableView.insertRowsAtIndexPaths([newIndexPath], withRowAnimation: .Bottom)
            }

        }
    
    }
    
}
