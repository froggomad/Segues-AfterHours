//
//  ConfirmTreatViewController.swift
//  PixelsFavoriteThings
//
//  Created by Ciara Beitel on 12/10/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

import UIKit

class ConfirmTreatViewController: UIViewController {

    @IBOutlet weak var happyMeterSlider: UISlider!
    var rating: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //change slider based on rating from AddTreatVC
        if let rating = rating {
            if rating > 0 && rating <= 5 {
                happyMeterSlider.value = Float(rating) * 20
            }            
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
    }
    
    @IBAction func doneButton(_ sender: Any) {
        done()
    }
    
    func done() {
        self.dismiss(animated: true, completion: nil)
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
