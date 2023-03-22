//
//  ViewControllerDetail.swift
//  idm362-cq63v2
//
//  Created by Quynh Quach on 3/16/23.
//

import UIKit

class ViewControllerDetail: UIViewController {
    //Set up vars for Segue
    var ndxNum:Int?
    var incomingName:String?

    @IBOutlet weak var plantName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        plantName.text = incomingName?.uppercased()
        // Do any additional setup after loading the view.
    }
    

   
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        
//    }
//  

}
