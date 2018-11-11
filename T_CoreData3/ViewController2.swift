//
//  ViewController2.swift
//  T_CoreData3
//
//  Created by Fausto Checa on 09/11/2018.
//  Copyright © 2018 ch2.fausto.com. All rights reserved.
//

import UIKit
import CoreData

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myAppDelegate = (UIApplication.shared.delegate) as! AppDelegate
        
        let myCtxt = myAppDelegate.persistentContainer.viewContext
        
        let personFetchRequest: NSFetchRequest<Person> = Person.fetchRequest()
        
        // here goes the predicate
        
        do {
             let myArrayPerson = try myCtxt.fetch(personFetchRequest)
            print("--- Array ---->")
            print(myArrayPerson)
             print("----- FN ------>")
            print(myArrayPerson[0])
            
        } catch {
            print(error.localizedDescription)
        }
        
       
    }

    }
