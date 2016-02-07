//
//  User.swift
//  seeker
//
//  Created by Rachel Markell on 2/7/16.
//  Copyright (c) 2016 SARD. All rights reserved.
//

import Foundation


class User {
    class var sharedInstance: User {
        struct Static {
            static var instance: User?
            static var token: dispatch_once_t = 0
        }

        dispatch_once(&Static.token){
            Static.instance = User()
    }
    
    return Static.instance!
    }

    var profileUserName: String?
}