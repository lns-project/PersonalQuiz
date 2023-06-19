//
//  ResultViewController.swift
//  PersonalQuizR
//
//  Created by Динара Шарафутдинова on 16.06.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var answers: [Answer]!

    @IBOutlet var animalTypeLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        updateResult()
    }

    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
}

// MARK: - Private methods
extension ResultViewController {
    private func updateResult() {
        
        let mostFrequencyAnimal = Dictionary(grouping: answers) { $0.animal }
            .sorted { $0.value.count > $1.value.count }
            .first?.key
        if let mostFrequencyAnimal = mostFrequencyAnimal {
            updateUI(with: mostFrequencyAnimal)
        }
    }
    
    private func updateUI(with animal: AnimalType) {
        animalTypeLabel.text = "Вы - \(animal.rawValue)!"
        descriptionLabel.text = animal.definition
    }
}
