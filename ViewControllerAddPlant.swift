//
//  ViewControllerAddPlant.swift
//  idm362-cq63v2
//
//  Created by Quynh Quach on 3/2/23.
//

import UIKit

class ViewControllerAddPlant: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func saveButton(_ sender: Any) {
        displayLabel.text = "Hey there, \(nameText.text!)! Ready to grow with us?"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

}
