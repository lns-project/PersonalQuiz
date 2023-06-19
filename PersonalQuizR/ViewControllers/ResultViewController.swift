//
//  ResultViewController.swift
//  PersonalQuizR
//
//  Created by Динара Шарафутдинова on 16.06.2023.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
    
    deinit {
        print("ResultViewController has been deallocated")
    }
}
