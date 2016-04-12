//
//  CountdownSetViewController.swift
//  RaffleHat
//
//  Created by Gabe on 4/11/16.
//  Copyright © 2016 GabeCabrera. All rights reserved.
//

import UIKit

let createEventVC = CreateEventViewController()

class CountdownSetViewController: UIViewController {

    @IBAction func countdownCancelButton(sender: AnyObject) {
        
        if createEventVC.countdownSetSwitch.on {
            createEventVC.countdownSetSwitch.setOn(false, animated: true)
        }
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func countdownSaveButton(sender: AnyObject){dismissViewControllerAnimated(true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
