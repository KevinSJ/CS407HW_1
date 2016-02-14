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

    override func viewDidLoad() {
        super.viewDidLoad()
        checkResults(answers)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func checkResults(answers:[String]) -> Int{
        var i:Int = 1
        for answer in answers{
            print("Answers" + answer)
            i++
        }
        return i
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
