//
//  FirstViewController.swift
//  
//
//  Created by Abner Castro Aguilar on 30/07/15.
//
//

import UIKit

class FirstViewController: UIViewController {

    // MARK: Properties
    
    @IBOutlet weak var settingsButton: UIBarButtonItem!
    @IBOutlet weak var newNoteButton: UIBarButtonItem!
    
    // MARK: Actions
    
    @IBAction func settingsButtonPressed(sender: UIBarButtonItem) {
    }
    
    @IBAction func newNoteButtonPressed(sender: UIBarButtonItem) {
    }    
    
    // MARK: Methods
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
