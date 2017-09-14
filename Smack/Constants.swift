//
//  Constants.swift
//  Smack
//
//  Created by D D on 2017-08-26.
//  Copyright © 2017 ddresearch. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()

//  URL Constants
let BASE_URL = "https://chattychatdd.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register/"
let URL_LOGIN = "\(BASE_URL)account/login"

//  Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

//  User Defaults
let LOGGED_IN_KEY = "loggedIn"
let TOKEN_KEY = "token"
let USER_EMAIL = "userEmail"

//  Headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]

