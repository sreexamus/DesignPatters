//
//  ViewController.swift
//  NSNotificationsEx
//
//  Created by sreekanth reddy iragam reddy on 2/1/17.
//  Copyright © 2017 com.sree.objc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // NotificationCenter.defaultCe
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.InvokedWhenNotified), name: NSNotification.Name(rawValue: "InvokedWhenNotified"), object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func InvokedWhenNotified()-> Void{
        
        
        
        print("the notification is done")
        
        
        
        
        
        
        
        
    }


}

