//
//  secondQuestionViewController.swift
//  HomeWork1
//
//  Created by patron on 16/2/13.
//  Copyright © 2016年 Kevin Sicong Jiang. All rights reserved.
//

import UIKit

class secondQuestionViewController: UIViewController {
    var answers:[String] = []
    @IBOutlet weak var q2Answer: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnClearPush(sender: AnyObject) {
        q2Answer.text = ""
    }

    @IBAction func btnNextPush(sender: AnyObject) {
//        self.navigationController?.pushViewController(self, animated:true)
    self.performSegueWithIdentifier("toThirdQuestion", sender: self)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if(segue.identifier == "toThirdQuestion"){
            let vc:thirdQuestionViewController = segue.destinationViewController as! thirdQuestionViewController
            vc.answers = self.answers
            vc.answers.append(q2Answer.text!)
        }
    }

}
