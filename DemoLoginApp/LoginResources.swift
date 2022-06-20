//
//  LoginResources.swift
//  DemoLoginApp
//
//  Created by Bhumika Patel on 15/06/22.
//

import Foundation

struct LoginResources {
  
    func authenticate(loginRequest: LoginRequest, completionHandler : @escaping(_ result: LoginResponse?)->Void) {
        var urlRequest = URLRequest(url: URL(string: "https://demologin.laraveldeveloper.online/api/login")!)
        urlRequest.httpMethod = "post"
        urlRequest.addValue("application/json", forHTTPHeaderField: "content-type")
        urlRequest.httpBody = try? JSONEncoder().encode(loginRequest)
        
        HttpUtility.shared.postData(request: urlRequest, resultType: LoginResponse.self) { response in
            _ = completionHandler(response)
        }
    }
    
}
