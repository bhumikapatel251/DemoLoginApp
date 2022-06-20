//
//  Api1.swift
//  DemoLoginApp
//
//  Created by Bhumika Patel on 14/06/22.
//

import Foundation
import Combine
import SwiftUI

class Api1: ObservableObject {
    
    var didChange = PassthroughSubject<Api1, Never>()
    
    @Published var isCorrect : Bool = true
    
    @Published var isLoggedin : Bool = false {
        didSet{
            didChange.send(self)
        }
    }

    func checklogin1(email: String, password: String){
        let semaphore = DispatchSemaphore (value: 0)

        let parameters = [
          [
            "key": "email",
            "value": email,
            "type": "text"
          ],
          [
            "key": "password",
            "value": password,
            "type": "text"
          ]] as [[String : Any]]

        let boundary = "Boundary-\(UUID().uuidString)"
        var body = ""
        var error: Error? = nil
        for param in parameters {
          if param["disabled"] == nil {
            let paramName = param["key"]!
            body += "--\(boundary)\r\n"
            body += "Content-Disposition:form-data; name=\"\(paramName)\""
            if param["contentType"] != nil {
              body += "\r\nContent-Type: \(param["contentType"] as! String)"
            }
            let paramType = param["type"] as! String
            if paramType == "text" {
              let paramValue = param["value"] as! String
              body += "\r\n\r\n\(paramValue)\r\n"
            } else {
              let paramSrc = param["src"] as! String
              let fileData = try! NSData(contentsOfFile:paramSrc, options:[]) as Data
              let fileContent = String(data: fileData, encoding: .utf8)!
              body += "; filename=\"\(paramSrc)\"\r\n"
                + "Content-Type: \"content-type header\"\r\n\r\n\(fileContent)\r\n"
            }
          }
        }
        body += "--\(boundary)--\r\n";
        let postData = body.data(using: .utf8)

        var request = URLRequest(url: URL(string: "https://demologin.laraveldeveloper.online/api/login")!,timeoutInterval: Double.infinity)
        request.addValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")

        request.httpMethod = "POST"
        request.httpBody = postData

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          guard let data = data else {
            print(String(describing: error))
            semaphore.signal()
            return
          }
          print(String(data: data, encoding: .utf8)!)
          semaphore.signal()
        }

        task.resume()
        semaphore.wait()

    }
    func checklogin(email: String, password: String) {
        guard let url = URL(string: "https://demologin.laraveldeveloper.online/api/login") else {
            return
        }
        let body : [String : String] = ["email" : email, "password" : password]
        print(email)
        print(password)
        guard let finalBody = try? JSONEncoder().encode(body) else {
            return
        }
        debugPrint(finalBody)
        var request = URLRequest(url:url)
        //let parameters :[String: String] = ["email":"admin%40admin.com","password":"password"]
        
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
//        request.addValue("Bearer 3|3rEl1gGBgapTywL3UVVooRYdWI5gVnbv12drqhHq", forHTTPHeaderField: "Authorization")
        request.httpMethod = "POST"
        request.httpBody = finalBody
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          guard let data = data else {
            print(String(describing: error))
            return
          }
          print(String(data: data, encoding: .utf8)!)
        }
        task.resume()

    }
}
