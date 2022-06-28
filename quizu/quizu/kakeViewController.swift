//
//  kakeViewController.swift
//  quizu
//
//  Created by Owner on 2021/02/13.
//

import UIKit

class kakeViewController: UIViewController {

    var viewController: ViewController!
    
    @IBOutlet var tanngo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switch huseikaisuu {
        case 1:
            tanngo.text = "a"
        case 2:
            tanngo.text = "b"
        default:
            tanngo.text = "c"
        }
    }

    @IBAction func ru() {
        self.dismiss(animated: true, completion: nil)
    }
}
