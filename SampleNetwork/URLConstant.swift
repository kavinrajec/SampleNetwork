//
//  URLConstant.swift
//  SampleNetwork
//
//  Created by Kavin HS on 28/11/17.
//  Copyright © 2017 HealthsignZ. All rights reserved.
//

import Foundation

struct URLConstant {
    
    public static let SOCKET_PROTOCOL = 0
    public static let SSL_PROTOCOL = SOCKET_PROTOCOL + 1
    
    public static let POZ_BASE_URL_INDEX  = 0
    public static let CONQUEST_BASE_URL_INDEX  = POZ_BASE_URL_INDEX + 1
    public static let ELASTIC_URL_INDEX  = CONQUEST_BASE_URL_INDEX + 1
    public static let CHAT_URL_INDEX = ELASTIC_URL_INDEX + 1
    
    public static let PROTOCOL  = ["http://", "https://"]
    public static let LIVE_SOCKET_PORT = ["", "", "", ""]
    
    //Dev
    private static let DEV_POZ_BASE_URL = "192.168.2.26:"
    private  static let DEV_CONQUEST_URL = "192.168.2.26:"
    private  static let DEV_ELASTIC_URL = "13.126.201.215:"
    private static  let DEV_CHAT_URL = "http://34.250.47.212:"
    private  static let DEV_SOCKET_PORT = ["8081/POZApp/", "8081/HSignzAppServices/", "3001/", "3000"]
    private  static let DEV_SSL_PORT = ["8080/POZApp/", "8080/HSignzAppServices/", "3000/", "3000"]
    private  static let DEV_BASE_URL = [DEV_POZ_BASE_URL, DEV_CONQUEST_URL,
                                        DEV_ELASTIC_URL, DEV_CHAT_URL]
    //Local UAT
    private static  let LOCAL_UAT_CONQUEST_BASE_URL = "192.168.2.48:"
    private static  let LOCAL_UAT_POZ_BASE_URL = "192.168.2.48:"
    private static  let LOCAL_UAT_ELASTIC_BASE_URL = "192.168.2.28:"
    
    //not define for chat
    private  static let LOCAL_UAT_CHAT_URL = "http://chatelb-379370689.ap-south-1.elb.amazonaws.com"
    private  static let LOCAL_UAT_SOCKET_PORT = ["8080/POZApp/", "8080/HSignzAppServices/", "3001/", ""]
    private  static let LOCAL_UAT_SSL_PORT = ["8082/POZApp/", "8082/POZApp/", "3001/", "3001"]
    private  static let LOCAL_UAT_BASE_URL = [LOCAL_UAT_POZ_BASE_URL, LOCAL_UAT_CONQUEST_BASE_URL,
                                              LOCAL_UAT_ELASTIC_BASE_URL, LOCAL_UAT_CHAT_URL]
    //AWS QA
    private static  let AWS_QA_POZ_BASE_URL = "52.66.161.51:"
    private static  let AWS_QA_CONQUEST_BASE_URL = "52.66.161.51:"
    private static  let AWS_QA_ELASTIC_BASE_URL = "35.154.64.56:"
    private  static let AWS_QA_CHAT_URL = "http://chatelb-379370689.ap-south-1.elb.amazonaws.com"
    private  static let AWS_QA_SOCKET_PORT = ["8080/POZAppServices/", "8080/HSignzAppServices/", "3000/", ""]
    private  static let AWS_QA_SSL_PORT = ["8082/POZAppServices/", "8082/HSignzAppServices/", "3000/", ""]
    private  static let AWS_QA_BASE_URL = [AWS_QA_POZ_BASE_URL, AWS_QA_CONQUEST_BASE_URL,
                                           AWS_QA_ELASTIC_BASE_URL, AWS_QA_CHAT_URL]
    //AWS DEV
    private static  let AWS_DEV_POZ_BASE_URL = "devtomcatelb-139736948.ap-south-1.elb.amazonaws.com/"
    private static  let AWS_DEV_CONQUEST_BASE_URL = "devtomcatelb-139736948.ap-south-1.elb.amazonaws.com/"
    private static  let AWS_DEV_ELASTIC_BASE_URL = "13.126.201.215:"
    private  static let AWS_DEV_CHAT_URL = "http://13.126.210.227:"
    private  static let AWS_DEV_SOCKET_PORT = ["POZAppServices/", "HSignzAppServices/", "3001/", "3000"]
    private  static let AWS_DEV_SSL_PORT = ["POZAppServices/", "HSignzAppServices/", "3000/", "3000"]
    private  static let AWS_DEV_BASE_URL = [AWS_DEV_POZ_BASE_URL, AWS_DEV_CONQUEST_BASE_URL,
                                            AWS_DEV_ELASTIC_BASE_URL, AWS_DEV_CHAT_URL]
    //DEMO
    private static  let AWS_DEMO_CONQUEST_BASE_URL = "democonquest.ap-south-1.elasticbeanstalk.com/"
    private static  let AWS_DEMO_POZ_BASE_URL = "demopoz.ap-south-1.elasticbeanstalk.com/"
    private static  let AWS_DEMO_ELASTIC_BASE_URL = "demohssearch.ap-south-1.elasticbeanstalk.com/"
    private  static let AWS_DEMO_CHAT_URL = "http://13.126.123.34:3000/"
    private  static let AWS_DEMO_SOCKET_PORT = ["", "", "", ""]
    private  static let AWS_DEMO_SSL_PORT = ["", "", "", ""]
    private  static let AWS_DEMO_BASE_URL = [AWS_DEMO_POZ_BASE_URL, AWS_DEMO_CONQUEST_BASE_URL,
                                             AWS_DEMO_ELASTIC_BASE_URL, AWS_DEMO_CHAT_URL]
    //AWS
    private  static let AWS_UAT_BASE_POZ_URL = "qapoz.eu-west-1.elasticbeanstalk.com/"
    private  static let AWS_UAT_BASE_CONQUEST_URL = "qaconquest.eu-west-1.elasticbeanstalk.com/"
    private  static let AWS_UAT_ELASTIC_URL = "52.213.216.101:"
    private static  let AWS_UAT_CHAT_URL = "http://34.250.47.212:3000/"
    private  static let AWS_UAT_SOCKET_PORT = ["", "", "3000/", "3000"]
    private  static let AWS_UAT_SSL_PORT = ["", "", "3000/", "3000"]
    private  static let DEMO_BASE_URL = [AWS_UAT_BASE_POZ_URL, AWS_UAT_BASE_CONQUEST_URL,
                                         AWS_UAT_ELASTIC_URL, AWS_UAT_CHAT_URL]
    //LIVE
    private static  let LIVE_CONQUEST_BASE_URL = "conquest.healthsignz.co/"
    private static  let LIVE_POZ_BASE_URL = "poz.healthsignz.co/"
    private static  let LIVE_ELASTIC_BASE_URL = "search.healthsignz.co/"
    private static  let LIVE_CHAT_URL = "http://chat.healthsignz.co/"
    private  static let LIVE_SSL_PORT = ["8082", "8082", "3000", "3000"]
    
    public static  let SOCKET_PORTS = [
            [ DEV_SOCKET_PORT, LOCAL_UAT_SOCKET_PORT, AWS_DEV_SOCKET_PORT, AWS_QA_SOCKET_PORT, AWS_DEMO_SOCKET_PORT, AWS_UAT_SOCKET_PORT, LIVE_SOCKET_PORT],
            [ DEV_SSL_PORT, LOCAL_UAT_SSL_PORT, AWS_DEV_SSL_PORT, AWS_QA_SSL_PORT, AWS_DEMO_SSL_PORT, AWS_UAT_SSL_PORT, LIVE_SSL_PORT]
    ]
    
    private  static let LIVE_BASE_URL = [LIVE_POZ_BASE_URL, LIVE_CONQUEST_BASE_URL,LIVE_ELASTIC_BASE_URL,
                                         LIVE_CHAT_URL]
    public static  let BASE_URLS = [DEV_BASE_URL, LOCAL_UAT_BASE_URL, AWS_DEV_BASE_URL, AWS_QA_BASE_URL,
                                    AWS_DEMO_BASE_URL, DEMO_BASE_URL, LIVE_BASE_URL]
    
    public static let LOGIN_URL = "http://52.66.161.51:8080/POZAppServices/poccontrol/userlogin"
    public static let SERVICE_URL = "http://52.66.161.51:8080/POZAppServices/admincontrol/getallservices"
}
