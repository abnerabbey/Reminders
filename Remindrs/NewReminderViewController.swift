//
//  NewReminderViewController.swift
//  Remindrs
//
//  Created by Antonio Santiago on 8/31/15.
//  Copyright (c) 2015 Abner Castro Aguilar. All rights reserved.
//

import UIKit

class NewReminderViewController: UIViewController, UITextFieldDelegate {

    // MARK:- Properties
    @IBOutlet weak var reminderDescriptionTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    var defaults: NSUserDefaults!
    
    // MARK:- Actions
    @IBAction func datePicker(sender: AnyObject) {
    }
    
    // MARK:- Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItemStyle.Plain, target: self, action: "cancelView")
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.Done, target: self, action: "reminderDone")
        
        self.navigationItem.leftBarButtonItem = cancelButton
        self.navigationItem.rightBarButtonItem = doneButton
        self.navigationItem.title = "New Reminder"
        
        self.reminderDescriptionTextField.delegate = self
        defaults = NSUserDefaults.standardUserDefaults()
    }
    
    func cancelView(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func reminderDone(){
        if self.reminderDescriptionTextField.text != ""{
        }
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.resignFirstResponder()
        return true
    }

}
