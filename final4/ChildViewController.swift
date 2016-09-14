//
//  ChildViewController.swift
//  final4
//
//  Created by Symonne Fontenot on 4/28/16.
//  Copyright © 2016 Symonne Fontenot. All rights reserved.
//

import UIKit

class ChildViewController: UIViewController, UITextFieldDelegate {

    //MARK: Properties
    @IBOutlet weak var saveButton: UIBarButtonItem!

    var child: Child?

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var dobTextField: UITextField!
    @IBOutlet weak var faveColorTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var medAller: UITextView!
    @IBOutlet weak var foodAller: UITextView!
    @IBOutlet weak var seasAller: UITextView!
    @IBOutlet weak var genAller: UITextView!
    @IBOutlet weak var immunz: UITextView!




    override func viewDidLoad() {
        super.viewDidLoad()
        

        if let child = child{
            navigationItem.title = child.name
            nameTextField.text = child.name
            dobTextField.text = child.dob
            faveColorTextField.text = child.faveColor
            heightTextField.text = child.height
            weightTextField.text = child.weight
            medAller.text = child.medAller
            foodAller.text = child.foodAller
            seasAller.text = child.seasAller
            genAller.text = child.genAller
            immunz.text = child.immunz
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UI Text Field Delegate 
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        //Hide keyboard
        textField.resignFirstResponder()
        return true
    }
    

    //MARK: Navigation

    @IBAction func cancel(sender: UIBarButtonItem) {
        if presentingViewController is UINavigationController{
            dismissViewControllerAnimated(true, completion: nil)
        }
        else{
            navigationController!.popViewControllerAnimated(true)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if saveButton === sender {
            let name = nameTextField.text ?? ""
            let dob = dobTextField.text ?? ""
            let faveColor = faveColorTextField.text ?? ""
            let height = heightTextField.text ?? ""
            let weight = weightTextField.text ?? ""
            let med = medAller.text ?? ""
            let food = foodAller.text ?? ""
            let seas = seasAller.text ?? ""
            let gen = genAller.text ?? ""
            let i = immunz.text ?? ""
            
            child = Child(name: name, dob: dob, faveColor: faveColor, height: height, weight: weight, medAller: med, foodAller: food, seasAller: seas, genAller: gen, immunz: i)
        }
    }
    
    

}

