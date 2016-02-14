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
    
    @IBOutlet weak var userAnswer1: UILabel!
    @IBOutlet weak var userAnswer2: UILabel!
    @IBOutlet weak var userAnswer3: UILabel!
    @IBOutlet weak var userAnswer4: UILabel!
    
    @IBOutlet weak var correctAnswer1: UILabel!
    @IBOutlet weak var correctAnswer2: UILabel!
    @IBOutlet weak var correctAnswer3: UILabel!
    @IBOutlet weak var correctAnswer4: UILabel!
    
    
    @IBOutlet weak var finalScore: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let usrAnswersL:[UILabel]=[userAnswer1,userAnswer2,userAnswer3,userAnswer4]
        let correctAnswersL:[UILabel]=[correctAnswer1,correctAnswer2,correctAnswer3,correctAnswer4]
        let correctAnswers = ["Abraham Lincoln","02-12-1806","Gettysburg","54"]
        let correct = compareResults(self.answers, correctAnswers: correctAnswers)
        
        fillUsrAnswers(usrAnswersL, answers:self.answers)
        fillCorrectAnswers(correctAnswersL, answers:correctAnswers)
        
        finalScore.text = "You get "+String(correct/4 * 100) + String(" %")
        
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
    
    func fillUsrAnswers(usrAnswers:[UILabel],answers:[String]){
        for(index,element) in answers.enumerate(){
                usrAnswers[index].text = element
        }
    }
    
    func fillCorrectAnswers(correctAnswers:[UILabel],answers:[String]){
        for(index,element) in answers.enumerate(){
            correctAnswers[index].text = element
        }
    }
    
    @IBAction func btnRestartPush(sender: AnyObject) {
        self.performSegueWithIdentifier("backToHomeScreen", sender: self)
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
