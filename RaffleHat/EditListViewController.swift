//
//  EditListViewController.swift
//  RaffleHat
//
//  Created by Gabe on 4/8/16.
//  Copyright © 2016 GabeCabrera. All rights reserved.
//

import UIKit

class EditListViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var editListTextField: UITextField!
    
    @IBAction func editListCancelButton(sender: AnyObject) {
        dismissViewController()
    }
    @IBAction func editListSaveButton(sender: AnyObject) {
        dismissViewController()

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        editListTextField.delegate = self
        hideKeyboardWhenTappedAround()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(userText: UITextField) -> Bool {
        editListTextField.resignFirstResponder()
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
