//
//  ViewController.swift
//  ShoeConverter
//
//  Created by David Blanck on 10/5/14.
//  Copyright (c) 2014 VidWare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
    
//        let sizeFromTextField = mensShoeSizeTextField.text          //get entered string
//        let numberFromTextField = sizeFromTextField.toInt()         //get an optional
//        var integerFromTextField = numberFromTextField!             //unwrap optional
        
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false                   //unhide label
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        
        
//        //set conversion costant
//        integerFromTextField += conversionConstant                  // convert
//        mensConvertedShoeSizeLabel.hidden = false                   //unhide label
//        let stringWithUpdatedShoeSize = "\(integerFromTextField)"   //convert to string
//        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize //update label
    
    }

    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton) {
    
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"

    
    }
}

