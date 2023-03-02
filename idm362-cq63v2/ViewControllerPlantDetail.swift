//
//  ViewControllerPlantDetail.swift
//  idm362-cq63v2
//
//  Created by Quynh Quach on 3/2/23.
//

import UIKit

class ViewControllerPlantDetail: UIViewController {
    
    @IBOutlet weak var displayText1: UILabel!
    @IBOutlet weak var displayText2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func textChangeSwitch(_ sender: UISwitch) {
        if (sender.isOn) {
            displayText1.text = "Done ✓"
            displayText1.textColor = UIColor(named: "AccentColor")
        }
        else {
            displayText1.text = "Pending..."
            displayText1.textColor = UIColor(named: "Black Color")
        }
    }
    
    @IBAction func textChangeSwitch2(_ sender: UISwitch) {
        if (sender.isOn) {
            displayText2.text = "Done ✓"
            displayText2.textColor = UIColor(named: "AccentColor")
        }
        else {
            displayText2.text = "Pending..."
            displayText2.textColor = UIColor(named: "Black Color")
        }
    }
}
