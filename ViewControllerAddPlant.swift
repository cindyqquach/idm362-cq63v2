//
//  ViewControllerAddPlant.swift
//  idm362-cq63v2
//
//  Created by Quynh Quach on 3/2/23.
//

import UIKit

class ViewControllerAddPlant: UIViewController {


    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
  
    @IBAction func showAlert(_ sender: Any) {
        let myAlertObj = UIAlertController(title: "Welcome!", message: "Hey \(nameText.text!), ready to grow with us?", preferredStyle: .alert)
        myAlertObj.addAction(UIAlertAction(title: "CANCEL", style: .cancel, handler: {
            (UIAlertAction) in
            print("No")
        }))
        myAlertObj.addAction(UIAlertAction(title: "YES!", style: .default, handler: {
            (UIAlertAction) in
            print("Yes")
        }))
        myAlertObj.view.tintColor = UIColor(named: "AccentColor")
        self.present(myAlertObj, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

}
