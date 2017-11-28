//
//  ServiceOperation.swift
//  SampleNetwork
//
//  Created by Kavin HS on 23/11/17.
//  Copyright © 2017 HealthsignZ. All rights reserved.
//

import Foundation

class ServiceOpeartion : WebService<[ServiceItem]> {
    
    let urlString = "http://52.66.161.51:8080/POZAppServices/admincontrol/getallservices"
    
     init() {
        super.init(url: URLConstant.SERVICE_URL)
    }
    
    override func addTorequest(completion: @escaping ([ServiceItem]) -> Void, error: @escaping () -> Void) {
        super.addTorequest(completion: { (response) in
            completion(response)
        }) {
            error()
        }
    }
    
    
}
