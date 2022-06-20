import Foundation
import Alamofire

struct Logintest: Encodable {
    let email: String
    let password: String
}

class LoginViewModel: ObservableObject{
    
    @Published var result: ResultData? = nil
    @Published var isLoginSuccessful = false
    @Published var isCorrect = false

    func fetchPerson(username : String, password : String) {
        
        let headers: HTTPHeaders = [
            .contentType("application/x-www-form-urlencoded")
            //.authorization("Bearer 26|cvtVgeLU5MV1jUdQgeinDtupug8zycLU1NX6ppXN")
            //.contentType("multipart/form-data;")
        ]
//        AF.request("https://demologin.laraveldeveloper.online/api/v1/users", method: .get, headers: headers).responseJSON{responsetest in
//            debugPrint(responsetest)
//        }
        
        let login = Logintest(email: "admin@admin.com", password: "password")
                AF.request("https://demologin.laraveldeveloper.online/api/login", method: .post, parameters: login, headers: headers).response{responsetest in
                    debugPrint(responsetest)
                }
        
        
//        guard let url = URL(string: "https://demologin.laraveldeveloper.online/api/login") else {
//            print("Error: cannot create URL")
//            return
//        }
//
//        let requestModel = RequestData(name: username, password: password)
//       // let request = Request(metadata: RequestMetadata(), data: requestModel)
//
//        guard let jsonData = try? JSONEncoder().encode(requestModel) else {
//            print("Error: Trying to convert model to JSON data")
//            return
//        }
//
//        var urlrequest = URLRequest(url: url)
//        urlrequest.httpMethod = "POST"
//        urlrequest.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
//        urlrequest.httpBody = jsonData
//
//
//        URLSession.shared.dataTask(with: urlrequest) { data, response, error in
//
//            DispatchQueue.main.async {
//
//                guard let data = data else {
//                print("Error: Did not receive data")
//                return
//            }
//
//            do {
//                let jsonObject = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? NSDictionary
//                print(jsonObject)
//
//                guard let finalPerson = try? JSONDecoder().decode(Result.self, from : data) else {
//                        print("Error: Couldn't decode data")
//                            return
//                }
//                self.isLoginSuccessful = true
//
//                print(finalPerson)
//                self.result = finalPerson.data
//            } catch {
//                print("Error: Trying to convert JSON data to string")
//                return
//            }
//            }
//        }.resume()
    }
    
}
