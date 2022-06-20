//
//  LoginValidation.swift
//  DemoLoginApp
//
//  Created by Bhumika Patel on 15/06/22.
//

import Foundation

struct ValidationResult {
    var success: Bool = false
    var errorMessage : String?
}

struct LoginValidation {
    
    func validationUserInputs(userEmail: String, userPassword: String) -> ValidationResult {
        
        if(userEmail.isEmpty || userPassword.isEmpty){
            return ValidationResult(success: false, errorMessage: "User email and password cannot be empty")
        }
        if(isValidEmail(value: userEmail) == false){
            return ValidationResult(success: false, errorMessage: "Useremail format incorrect")
        }
        
        return ValidationResult(success: true, errorMessage: nil)
    }
    
    private func isValidEmail(value: String) -> Bool
    {
        let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)
        return regex.firstMatch(in: value, options: [], range: NSRange(location: 0, length: value.count)) != nil
            
    }
    private func isValidPassword(str: String) -> [String]
    {
            
        var errors: [String] = []
           if(!NSPredicate(format:"SELF MATCHES %@", ".*[A-Z]+.*").evaluate(with: str)){
               errors.append("least one uppercase")
           }
           
           if(!NSPredicate(format:"SELF MATCHES %@", ".*[0-9]+.*").evaluate(with: str)){
               errors.append("least one digit")
           }

           if(!NSPredicate(format:"SELF MATCHES %@", ".*[!&^%$#@()/]+.*").evaluate(with: str)){
               errors.append("least one symbol")
           }
           
           if(!NSPredicate(format:"SELF MATCHES %@", ".*[a-z]+.*").evaluate(with: str)){
               errors.append("least one lowercase")
           }
           
           if(str.count < 8){
               errors.append("min 8 characters total")
           }
           return errors
            
    }
}
