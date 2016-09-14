//
//  Child.swift
//  final4
//
//  Created by Symonne Fontenot on 5/2/16.
//  Copyright © 2016 Symonne Fontenot. All rights reserved.
//

import UIKit

class Child{
    // MARK: Properties

    
    var name: String
    var dob: String
    var faveColor: String
    var height: String
    var weight: String
    var medAller: String
    var foodAller: String
    var seasAller: String
    var genAller: String
    var immunz: String

    
    
    
    // MARK: Initialization
    
    init?(name: String, dob: String, faveColor: String, height: String, weight: String, medAller: String, foodAller: String, seasAller: String, genAller: String, immunz: String){
        //Initialize stored properties
        self.name = name
        self.dob = dob
        self.faveColor = faveColor
        self.height = height
        self.weight = weight
        self.medAller = medAller
        self.foodAller = foodAller
        self.seasAller = seasAller
        self.genAller = genAller
        self.immunz = immunz

        //If name is left blank
        if name.isEmpty{
            return nil
        }
    }//end init method




    

}//end of class
