//
//  ViewController.swift
//  HomeWork1
//
//  Created by patron on 16/2/8.
//  Copyright © 2016年 Kevin Sicong Jiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonPushed(sender: AnyObject) {
        self.performSegueWithIdentifier("toNavController", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

