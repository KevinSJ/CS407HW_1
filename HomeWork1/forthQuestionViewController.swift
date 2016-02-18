//
//  forthQuestionViewController.swift
//  HomeWork1
//
//  Created by patron on 16/2/13.
//  Copyright © 2016年 Kevin Sicong Jiang. All rights reserved.
//

import UIKit

class forthQuestionViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    var answers:[String] = [String]()
    let pickerData=["45","46","47","48","49","50","51","52","53","54","55"]
    var q4Answer:String = ""
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView.delegate=self
        self.pickerView.dataSource=self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        q4Answer = pickerData[row]
    }
    
    @IBAction func btnNextPush(sender: AnyObject) {
        self.performSegueWithIdentifier("showFinalResult", sender: self)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if(segue.identifier == "showFinalResult"){
            let vc:displayFinalResultViewController = segue.destinationViewController as! displayFinalResultViewController
            vc.answers = self.answers
            vc.answers.append(q4Answer)
        }
    
    }

}
