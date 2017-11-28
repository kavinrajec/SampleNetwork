//
//  ServiceMAnager.swift
//  SampleNetwork
//
//  Created by Kavin HS on 23/11/17.
//  Copyright © 2017 HealthsignZ. All rights reserved.
//

import Foundation

protocol ServiceManagerDelegate {
    func onSuccess(list : [ServiceItem])
    func onError()
}

protocol LoginManagerDelegate {
    func onSuccess(list : ServiceItem)
    func onError()
}

class ServiceManager {
    
    public func getServiceList(delegate : ServiceManagerDelegate){
        
        let operation = ServiceOpeartion()
        operation.addTorequest(completion: { (response) in
            delegate.onSuccess(list: response)
        }) {
            delegate.onError()
        }
        
    }
   
    public func login(request : LoginRequest , delegate : LoginManagerDelegate){
        
        let body = try? JSONEncoder().encode(request)
        
        let operation = LoginOperation(body : body!)
        operation.addTorequest(completion: { (response) in
            delegate.onSuccess(list: response)
        }) {
            delegate.onError()
        }
        
    }
}
