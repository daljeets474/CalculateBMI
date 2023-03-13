//
//  CalculateBmiManager.swift
//  CalculateBMI
//
//  Created by Daljeet Singh on 13/03/23.
//

import UIKit

class CalculateBmiManager{
    
    private static var calculateBmiManager : CalculateBmiManager? = nil
    private var height:Float = 0
    private var weight:Float = 0
    
    public static func getInstance() -> CalculateBmiManager{
        if(calculateBmiManager == nil){
            calculateBmiManager = CalculateBmiManager()
        }
        return calculateBmiManager!
    }
    
    
    func getHeightvalue(value:Float = 0) -> String{
        height = value
        return "\(String(format: "%.2f", value))M"
    }
    
    func getWeightvalue(value:Float = 0) -> String{
        weight = value
        return "\(String(format: "%.0f", value))KG"
    }
    
    func calculateBMI() -> BmiModel{
        let bmi = weight / (height * height)
        return getbmiModel(bmi: bmi)
    }
    
    private func getbmiModel(bmi:Float) -> BmiModel{
        var bmiModel:BmiModel = BmiModel()
        bmiModel.bmi = String(format: "%.2f", bmi)
        if(bmi < 20.0){
            bmiModel.message = "Underweight! Eat more to gain weight."
            bmiModel.color = UIColor.yellow
        }else if(bmi > 20.0 && bmi < 60.0){
            bmiModel.message = "Normal! Eat anything fit to go."
            bmiModel.color = UIColor.green
        }else{
            bmiModel.message = "Overweight! Do some dieting."
            bmiModel.color = UIColor.red
        }
        return bmiModel
    }
}
