//
//  firstQuestionViewController.swift
//  HomeWork1
//
//  Created by patron on 16/2/13.
//  Copyright © 2016年 Kevin Sicong Jiang. All rights reserved.
//

import UIKit

class firstQuestionViewController: UIViewController {
    
    @IBOutlet weak var questionPhoto: UIImageView!
    
    @IBOutlet weak var q1Answer: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.questionPhoto.image=UIImage(named: "Lincoln_Bascom_12_1908.jpg")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnClearPush(sender: AnyObject) {
        q1Answer.text = ""
    }

    @IBAction func btnNextPush(sender: AnyObject) {
        self.performSegueWithIdentifier("toSecondQuestion", sender: self)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if(segue.identifier == "toSecondQuestion"){
            let vc:secondQuestionViewController = segue.destinationViewController as! secondQuestionViewController
            vc.answers.append(q1Answer.text!)
        }
    }
 

}
