//
//  ResultsViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 05.04.2021.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet var mainLable: UILabel!
    @IBOutlet var descriptionLable: UILabel!
    
    var answers: [Answer]!
    
    private var dictionary: [AnimalType: Int] = [:]
    private var values: [Int] = []
    private var maxValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        result()
    }
    
    private func result() {
        
        for item in answers {
            switch item.type {
            
            case .dog:
                if dictionary[.dog] == nil {
                    dictionary[.dog] = 1
                } else if dictionary[.dog] != nil {
                    dictionary[.dog]! += 1
                }
            case .cat:
                if dictionary[.cat] == nil {
                    dictionary[.cat] = 1
                } else if dictionary[.cat] != nil {
                    dictionary[.cat]! += 1
                }
            case .rabbit:
                if dictionary[.rabbit] == nil {
                    dictionary[.rabbit] = 1
                } else if dictionary[.rabbit] != nil {
                    dictionary[.rabbit]! += 1
                }
            case .turtle:
                if dictionary[.turtle] == nil {
                    dictionary[.turtle] = 1
                } else if dictionary[.turtle] != nil {
                    dictionary[.turtle]! += 1
                }
            }
        }
        
        for (_, value) in dictionary {
            values.append(value)
            maxValue = values.max() ?? 0
        }
        for (key, value) in dictionary {
            if value == maxValue {
                mainLable.text = String(key.rawValue)
                descriptionLable.text = String(key.definition)
            }
        }
    }
}
