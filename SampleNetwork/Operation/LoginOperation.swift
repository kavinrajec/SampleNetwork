//
//  LoginOperation.swift
//  SampleNetwork
//
//  Created by Kavin HS on 28/11/17.
//  Copyright © 2017 HealthsignZ. All rights reserved.
//

import Foundation
import Alamofire

class LoginOperation : WebService<ServiceItem> {
    
    let urlString = "http://52.66.161.51:8080/POZAppServices/poccontrol/userlogin"
    
    init(body : Data) {
        super.init(url: URLConstant.LOGIN_URL, body: body, method : HTTPMethod.post.rawValue)
    }
    
    override func addTorequest(completion: @escaping (ServiceItem) -> Void, error: @escaping () -> Void) {
        super.addTorequest(completion: { (response) in
            completion(response)
        }) {
            error()
        }
    }
    
}
