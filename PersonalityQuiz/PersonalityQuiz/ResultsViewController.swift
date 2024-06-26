//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by bahar Azar on 2024-03-28.
//

import UIKit

class ResultsViewController: UIViewController {

    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    var responses: [Answer]
    
    
    
    //handeling response
    init?(coder: NSCoder, responses: [Answer]){
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true

        calculatePersonalityResult()
    }
    
    
    func calculatePersonalityResult(){
        let frequencyOfAnswers = responses.reduce(into: [AnimalType: Int]()){
            (counts, answer) in
            if let existingCount = counts[answer.type]{
                counts[answer.type, default: 0] += 1

            }else{
                counts[answer.type] = 1
            }
        }//let frequencyOfAnswers
        
//        let frequentAnswerSorted = frequencyOfAnswers.sorted(by: {(pair1, pair2) in
//            return pair1.value > pair2.value
//        })
        
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
        
        
        
    }//func calculatePersonalityResult

 
    
    
    
    

}//main
