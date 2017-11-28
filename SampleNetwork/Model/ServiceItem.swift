//
//  ServiceItem.swift
//  SampleNetwork
//
//  Created by Kavin HS on 21/11/17.
//  Copyright © 2017 HealthsignZ. All rights reserved.
//

class ServiceItem : Codable  {
    
    var serviceType: Int?
    var serviceTypeName: String?
    var serviceId: CLong?
    var serviceName: String?
    var subServiceList: [ServiceItem]?
    
}

