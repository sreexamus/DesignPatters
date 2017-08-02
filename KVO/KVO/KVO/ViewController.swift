//
//  ViewController.swift
//  KVO
//
//  Created by sreekanth reddy iragam reddy on 2/1/17.
//  Copyright © 2017 com.sree.objc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var secView:SecondViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        secView=segue.destination as! SecondViewController
        secView.addObserver(self, forKeyPath: "myLabel.text", options: NSKeyValueObservingOptions.new, context: nil)
        
    }
    
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        
        if(keyPath=="myLabel.text"){
            
            print(change)
            if let theChange = change {

                if let approvedOld = theChange[NSKeyValueChangeKey.oldKey]  {
                    print("Old value \(approvedOld)")
                }
                
                if let approvedNew = theChange[NSKeyValueChangeKey.newKey]{
                    print("New value \(approvedNew)")
                    
                }
                
            }
            print("Done KVO")
        }else{
            
            print("No")
        }
        
         //super.observeValue(forKeyPath: keyPath, of: object, change: change, context: context)
    }
    
    deinit {
        removeObserver(self, forKeyPath: "approved")
    }


}

