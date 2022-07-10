//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Casey on 19/06/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var res : Double  = 0.0
    var ppl : Int = 0
    var tip : Double = 0.0
    
    @IBOutlet weak var q: UILabel!
    @IBOutlet weak var cost: UILabel!
    @IBOutlet weak var but: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cost.text = String(format: "%.00f", res)
        q.text = "Split between \(ppl) people with \(tip*100)% tip."
        // Do any additional setup after loading the view.
    }
    
    @IBAction func racalc(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
