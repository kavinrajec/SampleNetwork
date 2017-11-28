//
//  Item1ViewController.swift
//  SampleNetwork
//
//  Created by Kavin HS on 21/11/17.
//  Copyright © 2017 HealthsignZ. All rights reserved.
//

import UIKit
import Alamofire

class Item1ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, ServiceManagerDelegate, LoginManagerDelegate {
    
    var array = [ServiceItem]()
    var dict = [String :[ServiceItem]]()
    var headers = [String]()
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = editButtonItem
        
        table.dataSource = self
        table.delegate = self
        
        
        ServiceManager().getServiceList(delegate: self)
        
    }
    
    
    func onSuccess(list: ServiceItem) {
        
    }
    
    
    func onSuccess(list: [ServiceItem]) {
        
        let request = LoginRequest()
        request.emailId = "admin"
        request.password = "testing"
        
        ServiceManager().login(request: request, delegate: self)
        
        array = list
        load()
    }
    
    func onError() {
        print("Error")
    }
    
    @IBAction func editButton(_ sender: Any) {
    }
    
    func load()  {
        for item in array {
            var arr = dict[item.serviceTypeName!]
            
            if arr == nil {
                arr = [ServiceItem]()
            }
            
            arr!.append(item)
            dict.updateValue(arr!, forKey: item.serviceTypeName!)
        }
        
        headers = Array(dict.keys)
        
        table.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headers[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return dict.keys.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (dict[headers[section]]?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        let name = dict[headers[indexPath.section]]
        cell?.textLabel?.text = name?[indexPath.row].serviceName
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
    }
    
}
