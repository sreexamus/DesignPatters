//
//  SecondViewController.swift
//  KVO
//
//  Created by sreekanth reddy iragam reddy on 2/1/17.
//  Copyright © 2017 com.sree.objc. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var mybutton:UIButton!
    @IBOutlet weak var myLabel:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func DoITNow(_ sender: AnyObject) {
        
        myLabel.text="Sree"
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
