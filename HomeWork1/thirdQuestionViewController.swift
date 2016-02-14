//
//  thirdQuestionViewController.swift
//  HomeWork1
//
//  Created by patron on 16/2/13.
//  Copyright © 2016年 Kevin Sicong Jiang. All rights reserved.
//

import UIKit

class thirdQuestionViewController: UIViewController {
    
    var answers:[String] = []
    
    @IBOutlet weak var q3Answer: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnClearPush(sender: AnyObject) {
        q3Answer.text = ""
    }
   

    @IBAction func btnNextPush(sender: AnyObject) {
        self.performSegueWithIdentifier("toForthQuestion", sender: self)
    }
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if(segue.identifier == "toForthQuestion"){
            let vc:forthQuestionViewController = segue.destinationViewController as! forthQuestionViewController
            vc.answers = self.answers
            vc.answers.append(q3Answer.text!)
        }

    }

}
