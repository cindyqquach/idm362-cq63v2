//
//  ViewControllerPlantDetail2.swift
//  idm362-cq63v2
//
//  Created by Quynh Quach on 3/23/23.
//

import UIKit

class ViewControllerPlantDetail2: UIViewController {

    @IBOutlet weak var displayText1: UILabel!
    @IBOutlet weak var displayText2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func textSwitch(_ sender: UISwitch) {
        if (sender.isOn) {
            displayText1.text = "Done ✓"
            displayText1.textColor = UIColor(named: "AccentColor")
        }
        else {
            displayText1.text = "Pending..."
            displayText1.textColor = UIColor(named: "Black Color")
        }
    }
    
    @IBAction func textSwitch2(_ sender: UISwitch) {
        if (sender.isOn) {
            displayText2.text = "Done ✓"
            displayText2.textColor = UIColor(named: "AccentColor")
        }
        else {
            displayText2.text = "Pending..."
            displayText2.textColor = UIColor(named: "Black Color")
        }
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
