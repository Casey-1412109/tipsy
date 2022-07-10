//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var nos: UILabel!
    @IBOutlet weak var twenty: UIButton!
    @IBOutlet weak var ten: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var amt: UITextField!
    
    var tip : Double = 0.0
    var ppl = 2
    var a : Double = 0.0
    @IBAction func per(_ sender: UIButton) {
        amt.endEditing(true)
        zero.isSelected = false
        twenty.isSelected = false
        ten.isSelected = false
        sender.isSelected = true
        tip = (Double((sender.currentTitle!).dropLast())!)/100
        
    }
    @IBAction func calc(_ sender: UIButton) {
        amt.endEditing(true)
        a = Double(amt.text!) ?? 0.0
        if a > 0
        {
            a = ((a )*(1+tip)/Double(ppl))
            self.performSegue(withIdentifier: "2_screen", sender: self)
        }
    }

    @IBAction func vary(_ sender: UIStepper) {
        amt.endEditing(true)
        ppl = Int(sender.value)
        nos.text = String(ppl)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "2_screen"
        {
            let d = segue.destination as! ResultsViewController
            d.res = a
            d.ppl = ppl
            d.tip = tip
        }
        // Do any additional setup after loading the view.
    }


}

