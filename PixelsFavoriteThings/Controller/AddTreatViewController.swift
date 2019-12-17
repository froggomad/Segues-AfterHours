//
//  AddTreatViewController.swift
//  PixelsFavoriteThings
//
//  Created by Ciara Beitel on 12/10/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

import Foundation
import UIKit

class AddTreatViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var flavorTextField: UITextField!
    @IBOutlet weak var amountOfTreatsTextField: UITextField!
    @IBOutlet weak var ratingTextField: UITextField!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ModalConfirmTreatVC" {
            if let destination = segue.destination as? ConfirmTreatViewController {
                destination.rating = Int(ratingTextField.text ?? "0")
            }
        }
    }
   
}
