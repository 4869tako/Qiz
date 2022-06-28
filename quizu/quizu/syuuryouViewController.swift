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
            seikaisuu.text = "0問"
            komento.text = "💢"
        case 1:
            seikaisuu.text = "1問"
            komento.text = "もっと勉強しろ💢"
        case 2:
            seikaisuu.text = "2問"
            komento.text = "努力が足りないな〜"
        case 3:
            seikaisuu.text = "3問"
            komento.text = "まだまだ、諦めずに頑張れ〜"
        case 4:
            seikaisuu.text = "4問"
            komento.text = "まずまずだね、間違えた所を確認しよう！"
        case 5:
            seikaisuu.text = "5問"
            komento.text = "惜しい！もうちょっと！"
        default:
            seikaisuu.text = "6問"
            komento.text = "すごい！次もその調子！"
            
        }
        
    }
    @IBAction func ru() {
        self.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
