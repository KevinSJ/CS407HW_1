//
//  finalResultController.swift
//  HomeWork1
//
//  Created by patron on 16/2/17.
//  Copyright © 2016年 Kevin Sicong Jiang. All rights reserved.
//

import UIKit

class finalResultController: UITableViewController {

    @IBOutlet var tbV: UITableView!
    var answers:[String] = [String]()
    
    @IBOutlet weak var userAnswer4: UILabel!
    @IBOutlet weak var userAnswer3: UILabel!
    @IBOutlet weak var userAnswer2: UILabel!
    @IBOutlet weak var userAnswer1: UILabel!
    
    @IBOutlet weak var finalScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let usrAnswersL:[UILabel]=[userAnswer1,userAnswer2,userAnswer3,userAnswer4]
        let correctAnswers = ["Abraham Lincoln","02-12-1806","Gettysburg","54"]
        let correct = compareResults(self.answers, correctAnswers: correctAnswers)
        
        fillUsrAnswers(usrAnswersL, answers:self.answers)
        
        finalScore.text = "You get "+String(correct/4 * 100) + String(" %")
        
        self.tbV.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    @IBAction func btnRestartPush(sender: AnyObject) {
        self.performSegueWithIdentifier("backToHomeScreen", sender: self)
    }
    
    func compareResults(answers:[String],correctAnswers:[String])->Int{
        var count:Int = 0
        for(index,element) in answers.enumerate(){
            if (element == correctAnswers[index]){
                count = count + 1
            }
        }
        return count
    }
    
    func fillUsrAnswers(usrAnswers:[UILabel],answers:[String]){
        for(index,element) in answers.enumerate(){
            usrAnswers[index].text = element
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return tableView.numberOfSections
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tableView.numberOfRowsInSection(section)
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
