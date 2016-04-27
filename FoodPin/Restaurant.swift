//
//  Restaurant.swift
//  FoodPin
//
//  Created by Admin on 27.04.16.
//  Copyright © 2016 Sviridov. All rights reserved.
//

import Foundation

class Restaurant {
    
    private var _name:String!
    private var _type:String!
    private var _location:String!
    private var _image:String!
    private var _isVisited:Bool!
    
    var name:String!{
        return _name
    }
    var type:String!{
        return _type
    }
    var location:String!{
        return _location
    }
    var image:String!{
        return _image
    }
    var isVisited:Bool!{
        return _isVisited
    }
    init(name:String, type:String, location:String, image:String, isVisited:Bool) {
        self._name = name
        self._type = type
        self._location = location
        self._image = image
        self._isVisited = isVisited}
    
}