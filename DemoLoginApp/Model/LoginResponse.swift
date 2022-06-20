//
//  LoginResponse.swift
//  DemoLoginApp
//
//  Created by Bhumika Patel on 14/06/22.
//

import Foundation

struct LoginResponse : Decodable{
    let errorMessage: String?
    let data: LoginResponseData?
}
struct LoginResponseData : Decodable{
    let email : String
    let id : Int
}
