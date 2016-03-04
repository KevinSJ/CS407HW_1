//
//  displayFinalResultViewController.swift
//  HomeWork1
//
//  Created by patron on 16/2/13.
//  Copyright © 2016年 Kevin Sicong Jiang. All rights reserved.
//

import UIKit

class displayFinalResultViewController: UIViewController {
    var answers:[String] = [String]()
    

    
    @IBOutlet weak var finalScore: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let correctAnswers = ["Abraham Lincoln","02-12-1806","Gettysburg","54"]
        let correct = compareResults(self.answers, correctAnswers: correctAnswers)
        let resultPercentage = Double(correct)/4.0*100
        finalScore.text = "You got "+String(resultPercentage) + String(" %")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
    @IBAction func btnRestartPush(sender: AnyObject) {
            self.navigationController?.popToRootViewControllerAnimated(true)
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
