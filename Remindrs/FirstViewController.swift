//
//  FirstViewController.swift
//  
//
//  Created by Abner Castro Aguilar on 30/07/15.
//
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // MARK: Properties
    
    @IBOutlet weak var settingsButton: UIBarButtonItem!
    @IBOutlet weak var newNoteButton: UIBarButtonItem!
    @IBOutlet weak var notesTableView: UITableView!
    var reminders: [String]?
    var dates: [String]?
    
    // MARK: Actions
    
    @IBAction func settingsButtonPressed(sender: UIBarButtonItem) {
    }
    
    @IBAction func newNoteButtonPressed(sender: UIBarButtonItem) {
        self.presentViewController(NewReminderViewController(), animated: true, completion: nil)
    }
    
    // MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = NSUserDefaults.standardUserDefaults()
        reminders = defaults.objectForKey("reminders") as! [String]!
        dates = defaults.objectForKey("dates") as! [String]!
    
        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reminders!.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("notesCell")as! UITableViewCell!
        var cellTableTitle = cell.viewWithTag(1) as! UILabel!
        var cellTableDate = cell.viewWithTag(2) as! UILabel!
        return cell
    }

}