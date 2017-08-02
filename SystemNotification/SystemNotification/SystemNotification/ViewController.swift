//
//  ViewController.swift
//  SystemNotification
//
//  Created by sreekanth reddy iragam reddy on 2/1/17.
//  Copyright © 2017 com.sree.objc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var ISKeyBoardShown:Bool=true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.
        
      NotificationCenter.default.addObserver(self, selector: #selector(self.KeyBoardHandler), name: NSNotification.Name.UIKeyboardDidShow, object: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func KeyBoardHandler(notificatin: NSNotification){
        
        print("notification \(notificatin)")
        
    }

}

