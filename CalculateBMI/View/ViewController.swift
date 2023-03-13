//
//  ViewController.swift
//  CalculateBMI
//
//  Created by Daljeet Singh on 13/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightProgressBar: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightProgressBar: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    
    let bmiManager = CalculateBmiManager.getInstance()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadDefault()
    }

    @IBAction func onButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "gotoResult", sender: self)
    }
    
    @IBAction func onHeightSliderChange(_ sender: UISlider) {
        heightLabel.text = bmiManager.getHeightvalue(value: sender.value)
    }
    
    @IBAction func onWeightSliderChange(_ sender: UISlider) {
        weightLabel.text = bmiManager.getWeightvalue(value: sender.value)
    }
    
    func loadDefault(){
        heightLabel.text = bmiManager.getHeightvalue()
        weightLabel.text = bmiManager.getWeightvalue()
        heightProgressBar.value = 0
        weightProgressBar.value = 0
    }
    
    
}

