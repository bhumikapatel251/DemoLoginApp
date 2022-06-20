////
////  ApiCalling.swift
////  DemoLoginApp
////
////  Created by Bhumika Patel on 14/06/22.
////
//
//import Foundation
//import SwiftUI
//
//class ApiCalling: ObservableObject {
//    @Published var items = [DataModel]()
//    let prefixUrl = "https://demologin.laraveldeveloper.online"
//    
//    func createPosts(parameters: [String: Any]) {
//        guard let url = URL(string: "\(prefixUrl)/api/register") else {
//            print("not found url")
//            return
//        }
//        let data = try! JSONSerialization.data(withJSONObject: parameters)
//        
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        request.httpBody = data
//        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//        
//        URLSession.shared.dataTask(with: request) { (data, res, error) in
//            if error != nil {
//                print("error", error?.localizedDescription ?? "")
//                return
//            }
//            do {
//                if let data = data {
//                    let result = try JSONDecoder().decode(DataModel.self, from: data)
//                    DispatchQueue.main.sync {
//                        print(result)
//                    }
//                }else {
//                    print("no data")
//                }
//            } catch let JsonError {
//                print("create json error:", JsonError.localizedDescription)
//            }
//        }.resume()
//    }
//}
