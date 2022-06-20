//
//  LoginRequest.swift
//  DemoLoginApp
//
//  Created by Bhumika Patel on 15/06/22.
//

import Foundation

struct LoginRequest : Encodable {
    let userEmail, userPassword: String
}
