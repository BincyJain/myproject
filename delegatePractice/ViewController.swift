//
//  ViewController.swift
//  delegatePractice
//
//  Created by Globesoft Academy on 15/11/17.
//  Copyright © 2017 Globesoft Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFeild: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func buttonToNextvc(_ sender: Any) {
    let vc2 = self.storyboard?.instantiateViewController(withIdentifier: "secondVc") as? secondVc
        vc2?.delegate = self
        self.navigationController?.pushViewController(vc2!, animated: true)
    }

}
extension ViewController: textFeilddisplayDelegate{
    func changetext() {
        self.textFeild.text = "mounika"
        self.textFeild.textColor = UIColor.red
    }
}
