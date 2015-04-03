//
//  ViewController.swift
//  ShoeConverter
//
//  Created by jkimz on 1/27/15.
//  Copyright (c) 2015 jkimz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizedLabel: UILabel!
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var dogyearsTextField: UITextField!
    @IBOutlet weak var dogyearsConvertedLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertShoeSize(sender: UIButton) {
        //let sizeFromTextField = mensShoeSizeTextField.text
        //let numberFromTextField = sizeFromTextField.toInt()
        //var integerFromTextField = numberFromTextField!
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        
        let conversionConst = 30
        
        mensConvertedShoeSizedLabel.hidden = false
        mensConvertedShoeSizedLabel.text = "\(sizeFromTextField + conversionConst)" + " European"
    }
    
    @IBAction func womensConvertShoeSize(sender: UIButton) {
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConst = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConst)" + " European"
    }

    @IBAction func dogyeasConvert(sender: UIButton) {
        //let yearsFromTextField = dogyearsTextField.text.toInt()!
        let yearsFromTextField = Double((dogyearsTextField.text as NSString).doubleValue)
        let conversionConstFirstTwoYears = 10.5
        let conversionConstAfterTwoYears = 4.0
        var dogyears:Double
        
        if yearsFromTextField <= 2 {
            dogyears = yearsFromTextField * conversionConstFirstTwoYears
        }
        else {
            dogyears = 2 * conversionConstFirstTwoYears + (yearsFromTextField - 2) * conversionConstAfterTwoYears
        }
        dogyearsConvertedLabel.hidden = false
        dogyearsTextField.resignFirstResponder()
        dogyearsConvertedLabel.text = "\(dogyears)" + " Human Years"
    }

}
