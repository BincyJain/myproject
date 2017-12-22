//
//  secondVc.swift
//  delegatePractice
//
//  Created by Globesoft Academy on 15/11/17.
//  Copyright © 2017 Globesoft Academy. All rights reserved.
//

import UIKit
//protocol

protocol textFeilddisplayDelegate: NSObjectProtocol{
    func changetext()
    
}
class secondVc: UIViewController{
    weak var delegate: textFeilddisplayDelegate?
    override func viewDidLoad() {
    super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func buttontoGotofirstVc(_ sender: Any) {
        self.delegate?.changetext()
    }

}
