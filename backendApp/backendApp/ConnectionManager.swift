//
//  ConnectionManager.swift
//  backendApp
//
//  Created by Uri on 4/2/23.
//

import UIKit

class ConnectionManager {
    
    // instance of our data model
    private var userModel: UserModel?
    
    // call to a rest service to login the user
    func callLoginWith(user: String, password: String) {
        
        let session = URLSession.shared
        
        var request = URLRequest(url: URL(string: "https://www.mentoriavip.cfeapps.com/api/user/generate_auth_cookie/?username=SergioBece&password=Prueba")!)
        
        request.httpMethod = "GET"
        
        session.dataTask(with: request) { (data, response, error) in
            
            guard let data = data, error == nil, let response = response as? HTTPURLResponse else {
                print("Error")
                return
            }
            
            if response.statusCode == 200 {
                
                do {
                    let decoder = JSONDecoder()
                    self.userModel = try decoder.decode(UserModel.self, from: data)
                    print("Usermodel: \(String(describing: self.userModel?.user))")
                } catch {
                    print("Error parsing: \(error.localizedDescription)")
                }
                
            } else {
                print("Server error: \(response.statusCode)")
            }
        }.resume()
    }
}
