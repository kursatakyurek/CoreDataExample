//
//  Alert+Extension.swift
//  CoreDataExample
//
//  Created by Kürşat Akyürek on 25.07.2023.
//

import Foundation
import UIKit

extension MainViewController{
    func alertMessage(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Tamam", style: .cancel)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
}
