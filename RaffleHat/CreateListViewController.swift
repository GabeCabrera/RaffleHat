//
//  CreateListViewController.swift
//  RaffleHat
//
//  Created by Gabe on 4/8/16.
//  Copyright © 2016 GabeCabrera. All rights reserved.
//

import UIKit

class CreateListViewController: UIViewController, UITextFieldDelegate {
    

    @IBOutlet weak var createListNameTextField: UITextField!
    
    @IBAction func createListCancelButton(sender: AnyObject) {
        dismissViewController()
    }
    @IBAction func createListSaveButton(sender: AnyObject) {
        dismissViewController()

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        createListNameTextField.delegate = self
        hideKeyboardWhenTappedAround()


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(userText: UITextField) -> Bool {
        createListNameTextField.resignFirstResponder()
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
