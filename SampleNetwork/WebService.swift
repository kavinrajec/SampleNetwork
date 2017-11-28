//
//  WebService.swift
//  SampleNetwork
//
//  Created by Kavin HS on 22/11/17.
//  Copyright © 2017 HealthsignZ. All rights reserved.
//

import Foundation
import Alamofire

class WebService<T : Codable> {
    
    var url : String
    var body : Data?
    var method : String
    
    init(url : String, body : Data? = nil, method : String = HTTPMethod.get.rawValue) {
        self.url = url
        self.body = body
        self.method = method
    }
    
    public func addTorequest(completion : @escaping (T) -> Void , error : @escaping () -> Void){
        
        var request = URLRequest(url : URL(string : url)!)
        request.httpMethod = method
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = body
        
        print("Url:= \(request.url!) \n")
        
        if let body = self.body {
            print("Body:= \(String(data : body, encoding : .utf8)!) \n")
        }
        
        Alamofire.request(request).responseString{(responseDataString) -> () in
            
                switch responseDataString.result {
                case .success(let response) :
                    
                    print("Response:= \(response)  \n")
                    
                    if let data = responseDataString.data {
                        do {
                            let decoded = try JSONDecoder().decode(T.self, from : data)
                            completion(decoded)

                        } catch {
                            print("Error in parsing data")
                        }
                    }
                    
                case .failure(let failure) :
                    print(failure.localizedDescription)
                    error()
                }
                
            }
    }
    
    
}
