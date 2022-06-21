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
        
        print(username)
        print(password)
        
        let headers: HTTPHeaders = [
            .contentType("application/x-www-form-urlencoded")
            //.authorization("Bearer 26|cvtVgeLU5MV1jUdQgeinDtupug8zycLU1NX6ppXN")
            //.contentType("multipart/form-data;")
        ]
//        AF.request("https://demologin.laraveldeveloper.online/api/v1/users", method: .get, headers: headers).responseJSON{responsetest in
//            debugPrint(responsetest)
//        }
        
        let login = Logintest(email: username, password: password)
                AF.request("https://demologin.laraveldeveloper.online/api/login", method: .post, parameters: login, headers: headers).response{responsetest in
                    debugPrint(responsetest)
                    switch responsetest.result{
                    case.success(let data):
                        do{
                            let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? NSDictionary
                            if responsetest.response?.statusCode == 200 {
                            if let parseJSON = json{
                                let test = responsetest
                            }
                                self.isLoginSuccessful = true
                                print("success")
                            }else{
                                print("try again")
                            }
                        }catch{
                            print(error.localizedDescription)
                        }
                    case.failure(let err):
                        print(err.localizedDescription)
                    }

                    }
                }
        
        

    }
    

