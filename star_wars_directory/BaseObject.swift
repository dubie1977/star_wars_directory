//
//  BaseObject.swift
//  star_wars_directory
//
//  Created by dubie on 10/21/16.
//  Copyright © 2016 dubay. All rights reserved.
//

import UIKit

class BaseObject {


    private var _name: String!
    private var _films = ""
    private var _url = ""
    private var _image: UIImage!
    private var _backGroundColor: UIColor?
    private var _textColor1: UIColor?
    private var _textColor2: UIColor?
    
    
    public var name : String {
        
        get{
            return _name
        }
    }
    
    public var films : String {
        set(input){
            if (!input.isEmpty){
                _films = input
            }
        }
        get{
            return _films
        }
    }
    
    public var url : String {
        set(input){
            if (!input.isEmpty){
                _url = input
            }
        }
        get{
            return _url
        }
    }
    
    public var image : UIImage {
        get{
            return _image
        }
    }
    
    public var backGroundColor : UIColor {
        set(input){
            _backGroundColor = input
            
        }
        get{
            if let color = _backGroundColor{
                return color
            } else {
                return UIColor.purple
            }
        }
    }
    
    public var textColor1 : UIColor {
        set(input){
            _textColor1 = input
            
        }
        get{
            if let color = _textColor1{
                return color
            } else {
                return UIColor.white
            }
        }
    }
    
    public var textColor2 : UIColor {
        set(input){
            _textColor2 = input
            
        }
        get{
            if let color = _textColor2{
                return color
            } else {
                return UIColor.purple
            }
        }
    }
    
    init(name: String, image: UIImage) {
        self._name = name
        self._image = image
    }
    

    
}
