//
//  DataEngine.swift
//  star_wars_directory
//
//  Created by dubie on 11/2/16.
//  Copyright © 2016 dubay. All rights reserved.
//

import UIKit

class DataEngine{
    
    //init() {}

    

    public func createInitalCharacters() -> [BaseObject]{
        var characters = [BaseObject]()
        
        let luke = Person.init(name: "Luke Skywalker", image: "Luke_Skywalker", height: 172, mass: 77, hairColor: "Blond", skinColor: "Fair", eyeColor: "Blue", birthYear: "19BBY", gender: "Male", id: 1, backGroundColor: UIColor.white, textColor1: UIColor.black, textColor2: UIColor.green)
        characters.append(luke)
        
        let darth = Person.init(name: "Darth Vader", image: "darth_Vader", height: 202, mass: 136, hairColor: "None", skinColor: "White", eyeColor: "Yellow", birthYear: "41.9BBY", gender: "Male", id: 4, backGroundColor: UIColor.black, textColor1: UIColor.white, textColor2: UIColor.red)
        characters.append(darth)
        
        let leia = Person.init(name: "Leia Organa", image: "Leia", height: 150, mass: 49, hairColor: "Brown", skinColor: "Light", eyeColor: "Brown", birthYear: "19BBY", gender: "Female", id: 5, backGroundColor: UIColor.white, textColor1: UIColor.black, textColor2: UIColor.brown)
        characters.append(leia)
        
        let han = Person.init(name: "Han Solo", image: "Han-Solo", height: 180, mass: 80, hairColor: "Brown", skinColor: "Fair", eyeColor: "Brown", birthYear: "29BBY", gender: "Male", id: 14, backGroundColor: UIColor.white, textColor1: UIColor.black, textColor2: UIColor.brown)
        characters.append(han)
        
        let palpatine = Person.init(name: "Palpatine", image: "palpatine", height: 170, mass: 75, hairColor: "Gray", skinColor: "Pale", eyeColor: "Yellow", birthYear: "82BBY", gender: "Male", id: 21, backGroundColor: UIColor.black, textColor1: UIColor.white, textColor2: UIColor.red)
        characters.append(palpatine)
        
        let bobaFett = Person.init(name: "Boba Fett", image: "boba_fett", height: 183, mass: 78.2, hairColor: "Black", skinColor: "Fair", eyeColor: "Brown", birthYear: "31.5BBY", gender: "Male", id: 22, backGroundColor: UIColor.darkGray, textColor1: UIColor.blue, textColor2: UIColor.green)
        characters.append(bobaFett)
        
        return characters
    }


}
