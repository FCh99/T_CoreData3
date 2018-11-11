//
//  ViewController.swift
//  T_CoreData3
//
//  Created by Fausto Checa on 09/11/2018.
//  Copyright © 2018 ch2.fausto.com. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let myAppDelegate = (UIApplication.shared.delegate) as! AppDelegate
        
        let myContext = myAppDelegate.persistentContainer.viewContext
        
        let myself = Person(context: myContext)
        myself.firstName = "Fausto"
        myself.lastName = "Checa"
       
        
        let applePhone = Phone(context: myContext)
        applePhone.brand = "Apple"
        applePhone.model = "Iphone"
        applePhone.os = "IOS"
        
        myself.phone = applePhone
        
        print(myself.firstName!)
        print(myself.phone!.brand!)
        
        myAppDelegate.saveContext()
        
    }


}

