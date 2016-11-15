//
//  Person.swift
//  star_wars_directory
//
//  Created by dubie on 10/21/16.
//  Copyright © 2016 dubay. All rights reserved.
//

import UIKit

class Person: BaseObject{

    private var _height = 0.0
    private var _mass = 0.0
    private var _hairColor = ""
    private var _skinColor = ""
    private var _eyeColor = ""
    private var _birthYear = ""
    private var _gender = ""
    private var _homeWorld = ""
    private var _id = 0
    
    public var height : Double {
        set(input){
            if (input != 0){
                _height = input
            }
        }
        get{
            return _height
        }
    }
    
    public var mass : Double {
        set(input){
            if (mass != 0){
                _mass = input
            }
        }
        get{
            return _mass
        }
    }
    
    public var hairColor : String {
        set(input){
            if (!input.isEmpty){
                _hairColor = input
            }
        }
        get{
            return _hairColor
        }
    }
    
    public var skinColor : String {
        set(input){
            if (!input.isEmpty){
                _skinColor = input
            }
        }
        get{
            return _skinColor
        }
    }
    
    public var eyeColor : String {
        set(input){
            if (!input.isEmpty){
                _eyeColor = input
            }
        }
        get{
            return _eyeColor
        }
    }
    
    public var birthYear : String {
        set(input){
            if (!input.isEmpty){
                _birthYear = input
            }
        }
        get{
            return _birthYear
        }
    }
    
    public var gender : String {
        set(input){
            if (!input.isEmpty){
                _gender = input
            }
        }
        get{
            return _gender
        }
    }
    
    public var homeworld : String {
        set(input){
            if (!input.isEmpty){
                _homeWorld = input
            }
        }
        get{
            return _homeWorld
        }
    }
    
    public var catagory : String{
        get{
            return "Person"
        }
    }
    
    
    override init(name: String, image: String) {
        super.init(name: name, image: image)
        
    }
    
    init(name: String, image: String, height: Double, mass: Double, hairColor: String, skinColor: String, eyeColor: String, birthYear: String, gender: String, id: Int, backGroundColor: UIColor, textColor1: UIColor, textColor2: UIColor){
        
        super.init(name: name, image: "")
        
        self._mass = mass
        self._hairColor = hairColor
        self._skinColor = skinColor
        self._eyeColor = eyeColor
        self._birthYear = birthYear
        self._gender = gender
        self._id = id
        
        self.backGroundColor = backGroundColor
        self.textColor1 = textColor1
        self.textColor2 = textColor2
        self.url = "http://swapi.co/api/people/\(id)/"
    }

}
