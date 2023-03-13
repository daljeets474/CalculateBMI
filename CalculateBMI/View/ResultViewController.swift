//
//  ResultViewController.swift
//  CalculateBMI
//
//  Created by Daljeet Singh on 13/03/23.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    let bmiManager = CalculateBmiManager.getInstance()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadBMIVlue()
    }
    
    @IBAction func onButtonPressed(_ sender: UIButton) {
        //self.dismiss(animated: true)
        self.dismiss(animated: false, completion: nil)
        //self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    private func loadBMIVlue(){
        let bmiMOdel = bmiManager.calculateBMI()
        bmiLabel.text = bmiMOdel.bmi
        messageLabel.text = bmiMOdel.message
        backgroundImage.backgroundColor = bmiMOdel.color
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
