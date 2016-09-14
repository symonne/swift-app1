//
//  ChildDetailViewController.swift
//  final4
//
//  Created by Symonne Fontenot on 5/10/16.
//  Copyright © 2016 Symonne Fontenot. All rights reserved.
//

import UIKit

class ChildDetailViewController: UIViewController {
    
    var child: Child?

    @IBOutlet weak var dobLabel: UILabel!
    @IBOutlet weak var faveColorLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var medAller: UILabel!
    @IBOutlet weak var foodAller: UILabel!
    @IBOutlet weak var seasAller: UILabel!
    @IBOutlet weak var genAller: UILabel!
    @IBOutlet weak var immunzAller: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        if let child = child{
            navigationItem.title = child.name
            dobLabel.text = child.dob
            faveColorLabel.text = child.faveColor
            heightLabel.text = "height: \(child.height)"
            weightLabel.text = "weight:  \(child.weight)"
            medAller.text = "medicinal allergies:  \(child.medAller)"
            foodAller.text = "food allergies:  \(child.foodAller)"
            seasAller.text = "seasonal allergies:  \(child.seasAller)"
            genAller.text = "general allergies:  \(child.genAller)"
            immunzAller.text = "immunizations:  \(child.immunz)"
            
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "editChild"{
            let editChildController = segue.destinationViewController as! ChildViewController
            editChildController.child = child
        }
        
    }
    
    
    
}
