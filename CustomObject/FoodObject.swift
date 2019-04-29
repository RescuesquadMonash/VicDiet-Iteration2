//
//  FoodObject.swift
//  VicDiet
//
//  Created by Ming Yang on 6/4/19.
//  Copyright © 2019 Ming Yang. All rights reserved.
//

import UIKit

class FoodObject: NSObject {

    var name : String
    var protein: NSNumber
    var surveyFlag: String
    var calcium: NSNumber
    var totalFat: NSNumber
    var sodium: NSNumber
    var vitaminC: NSNumber
    var vitaminA: NSNumber
    var num: Double
    
    init(name: String, protein: NSNumber, surveyFlag: String,calcium: NSNumber,totalFat: NSNumber, sodium: NSNumber,vitaminC: NSNumber,vitaminA: NSNumber) {
        self.name = name
        self.protein = protein
        self.surveyFlag = surveyFlag
        self.calcium = calcium
        self.totalFat = totalFat
        self.sodium = sodium
        self.vitaminC = vitaminC
        self.vitaminA = vitaminA
        self.num = 1
    }
    
    func setWithMultipler(multipler: Double){
        
        
        self.protein = NSNumber(value: self.protein.doubleValue*multipler)
        self.calcium = NSNumber(value: self.calcium.doubleValue*multipler)
        self.totalFat = NSNumber(value: self.totalFat.doubleValue*multipler)
        self.sodium = NSNumber(value: self.sodium.doubleValue*multipler)
        self.vitaminC = NSNumber(value: self.vitaminC.doubleValue*multipler)
        self.vitaminA = NSNumber(value: self.vitaminA.doubleValue*multipler)
        self.num = multipler
    }
    
}
