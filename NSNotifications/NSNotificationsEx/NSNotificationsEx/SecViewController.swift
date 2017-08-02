//
//  SecViewController.swift
//  NSNotificationsEx
//
//  Created by sreekanth reddy iragam reddy on 2/1/17.
//  Copyright © 2017 com.sree.objc. All rights reserved.
//

import UIKit

class SecViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func MyActionDone(_ sender: Any) {
       // NotificationCenter.de
        
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "InvokedWhenNotified"), object: self)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
