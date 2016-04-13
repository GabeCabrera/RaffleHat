//
//  CreateEventViewController.swift
//  RaffleHat
//
//  Created by Gabe on 4/8/16.
//  Copyright © 2016 GabeCabrera. All rights reserved.
//

import UIKit


class CreateEventViewController: UIViewController, UITextFieldDelegate {
    

    @IBOutlet weak var eventNameTextField: UITextField!
    
    @IBAction func createEventCancelButton(sender: AnyObject) {
        
        dismissViewController()
        
    }
    @IBAction func createEventSaveButton(sender: AnyObject) {
         dismissViewController()
    }
    
    @IBOutlet weak var countdownSetSwitch: UISwitch!
    
    @IBAction func setCountdown(sender: AnyObject) {
        if countdownSetSwitch.on == false{
           // countdownSetSwitch.setOn(true, animated: true)
        }
    }
    func resetCountdownSwitch(){
        countdownSetSwitch.setOn(false, animated: true)
        if countdownSetSwitch.on == true{
            print("true")
        } else {
            print("false")
        }
    }

    override func viewWillAppear(animated: Bool) {
        resetCountdownSwitch()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        eventNameTextField.delegate = self
        hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(userText: UITextField) -> Bool {
        eventNameTextField.resignFirstResponder()
        return true;
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
