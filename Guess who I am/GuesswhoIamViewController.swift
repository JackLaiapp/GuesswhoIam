//
//  GuesswhoIamViewController.swift
//  Guess who I am
//
//  Created by MyMac on 2017/2/22.
//  Copyright © 2017年 MyMac. All rights reserved.
//

import UIKit

class GuesswhoIamViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var oscarsSeg: UISegmentedControl!
    @IBOutlet weak var boyImageView: UIImageView!
    @IBOutlet weak var OldImageView: UIImageView!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var PeterUISwitch: UISwitch!
    
    var numbervalue:Int = 88
    @IBAction func oscarsSender(_ sender: UISlider) {
        numberLabel.isHidden = false
        numbervalue = Int(sender.value)
        numberLabel.text = "\(numbervalue)"
    }
    @IBAction func finishButton(_ sender: Any) {
        if nameTextField.text == "Leo" && oscarsSeg.selectedSegmentIndex == 0 && PeterUISwitch.isOn == true && numbervalue == 88 {
                boyImageView.isHidden = true
                OldImageView.isHidden = false
            }else{
                boyImageView.isHidden = false
                OldImageView.isHidden = true
            }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
