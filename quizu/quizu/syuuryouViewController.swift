//
//  syuuryouViewController.swift
//  quizu
//
//  Created by Owner on 2021/02/13.
//

import UIKit


class syuuryouViewController: UIViewController {
    
    @IBOutlet var seikaisuu: UILabel!
    @IBOutlet var komento: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var _: syuuryouViewController!
        
        switch seikausu {
        case 0:
            seikaisuu.text = "0ๅ"
            komento.text = "๐ข"
        case 1:
            seikaisuu.text = "1ๅ"
            komento.text = "ใใฃใจๅๅผทใใ๐ข"
        case 2:
            seikaisuu.text = "2ๅ"
            komento.text = "ๅชๅใ่ถณใใชใใชใ"
        case 3:
            seikaisuu.text = "3ๅ"
            komento.text = "ใพใ ใพใ ใ่ซฆใใใซ้ ๅผตใใ"
        case 4:
            seikaisuu.text = "4ๅ"
            komento.text = "ใพใใพใใ ใญใ้้ใใๆใ็ขบ่ชใใใ๏ผ"
        case 5:
            seikaisuu.text = "5ๅ"
            komento.text = "ๆใใ๏ผใใใกใใฃใจ๏ผ"
        default:
            seikaisuu.text = "6ๅ"
            komento.text = "ใใใ๏ผๆฌกใใใฎ่ชฟๅญ๏ผ"
            
        }
        
    }
    @IBAction func ru() {
        self.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
