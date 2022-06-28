//
//  eigoViewController.swift
//  quizu
//
//  Created by Owner on 2021/02/03.
//

import UIKit

class kannziViewController: UIViewController {
    
    @IBOutlet var toi: UILabel!
    @IBOutlet var monndaibunn: UILabel!
    @IBOutlet var senntakusi1: UIButton!
    @IBOutlet var senntakusi2: UIButton!
    @IBOutlet var senntakusi3: UIButton!
    @IBOutlet var senntakusi4: UIButton!
    @IBOutlet var senntakusi5: UIButton!
    @IBOutlet var senntakusi6: UIButton!
    @IBOutlet var ImageView: UIImageView!
    @IBOutlet var ImageViewa: UIImageView!
    @IBOutlet var tugenomonndaia: UIButton!
    @IBOutlet var tugenomonndaib: UIButton!
    @IBOutlet var syuuryoua: UIButton!
    
    var toi1:[String] = ["問１", "問2", "問3", "問4", "問5", "問6"]
    
    var monndai:[String] = ["『人工的な』の英単語を答えなさい。", "『目の不自由な』の英単語を答えなさい。", "『マグロ』の英単語を答えなさい。", "『電気』の英単語を答えなさい。","『発展途上の』英単語を答えなさい。", "『重い』の最上級を答えなさい"]
    var zenntai:[String] = ["toi1[0]", "toi1[1]", "toi1[2]", "toi1[3]", "toi1[4]", "toi1[5]"]
    
    
    var toi1senntakusi1a:[String] = ["artificial", "without", "impressive", "mistake", "aquarium", "appearance"]
    var toi1senntakusi2a:[String] = ["blind", "barrier", "bond", "bump", "break", "burn"]
    var toi1senntakusi3a:[String] = ["tuna", "through", "traditional", "traffic", "theater", "traveling"]
    var toi1senntakusi4a:[String] = ["electricity", "experience", "expensive", "especially", "ehergy", "each"]
    var toi1senntakusi5a:[String] = ["", "", "", "", "", ""]
    var toi1senntakusi6a:[String] = ["", "", "", "", "", ""]
    var monndaisuu:Int = 6
    var qwe = [0, 1, 2, 3, 4, 5]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        monndaibunn.numberOfLines = 0
        
        kuizucyois()
    }
    
    func kuizucyois() {
        
        ImageView.isHidden = true
        ImageViewa.isHidden = true
        tugenomonndaia.isHidden = true
        tugenomonndaib.isHidden = true
        syuuryoua.isHidden = true
        
        let randomNumber = Int.random(in: 0...qwe.count - 1)
        
        switch qwe[randomNumber] {
        case 0:
            toi.text = toi1[0]
            monndaibunn.text = monndai[0]
            senntakusi1.setTitle(toi1senntakusi1a[0], for: .normal)
            senntakusi2.setTitle(toi1senntakusi1a[1], for: .normal)
            senntakusi3.setTitle(toi1senntakusi1a[2], for: .normal)
            senntakusi4.setTitle(toi1senntakusi1a[3], for: .normal)
            senntakusi5.setTitle(toi1senntakusi1a[4], for: .normal)
            senntakusi6.setTitle(toi1senntakusi1a[5], for: .normal)
        case 1:
            toi.text = toi1[1]
            monndaibunn.text = monndai[1]
            senntakusi1.setTitle(toi1senntakusi2a[0], for: .normal)
            senntakusi2.setTitle(toi1senntakusi2a[1], for: .normal)
            senntakusi3.setTitle(toi1senntakusi2a[2], for: .normal)
            senntakusi4.setTitle(toi1senntakusi2a[3], for: .normal)
            senntakusi5.setTitle(toi1senntakusi2a[4], for: .normal)
            senntakusi6.setTitle(toi1senntakusi2a[5], for: .normal)
            ImageView.isHidden = true
        case 2:
            toi.text = toi1[2]
            monndaibunn.text = monndai[2]
            senntakusi1.setTitle(toi1senntakusi3a[0], for: .normal)
            senntakusi2.setTitle(toi1senntakusi3a[1], for: .normal)
            senntakusi3.setTitle(toi1senntakusi3a[2], for: .normal)
            senntakusi4.setTitle(toi1senntakusi3a[3], for: .normal)
            senntakusi5.setTitle(toi1senntakusi3a[4], for: .normal)
            senntakusi6.setTitle(toi1senntakusi3a[5], for: .normal)
            ImageView.isHidden = true
        case 3:
            toi.text = toi1[3]
            monndaibunn.text = monndai[3]
            senntakusi1.setTitle(toi1senntakusi4a[0], for: .normal)
            senntakusi2.setTitle(toi1senntakusi4a[1], for: .normal)
            senntakusi3.setTitle(toi1senntakusi4a[2], for: .normal)
            senntakusi4.setTitle(toi1senntakusi4a[3], for: .normal)
            senntakusi5.setTitle(toi1senntakusi4a[4], for: .normal)
            senntakusi6.setTitle(toi1senntakusi4a[5], for: .normal)
            ImageView.isHidden = true
        case 4:
            toi.text = toi1[4]
            monndaibunn.text = monndai[4]
            senntakusi1.setTitle(toi1senntakusi5a[0], for: .normal)
            senntakusi2.setTitle(toi1senntakusi5a[1], for: .normal)
            senntakusi3.setTitle(toi1senntakusi5a[2], for: .normal)
            senntakusi4.setTitle(toi1senntakusi5a[3], for: .normal)
            senntakusi5.setTitle(toi1senntakusi5a[4], for: .normal)
            senntakusi6.setTitle(toi1senntakusi5a[5], for: .normal)
            ImageView.isHidden = true
        default:
            toi.text = toi1[5]
            monndaibunn.text = monndai[5]
            senntakusi1.setTitle(toi1senntakusi6a[0], for: .normal)
            senntakusi2.setTitle(toi1senntakusi6a[1], for: .normal)
            senntakusi3.setTitle(toi1senntakusi6a[2], for: .normal)
            senntakusi4.setTitle(toi1senntakusi6a[3], for: .normal)
            senntakusi5.setTitle(toi1senntakusi6a[4], for: .normal)
            senntakusi6.setTitle(toi1senntakusi6a[5], for: .normal)
            ImageView.isHidden = true
        }
        qwe.remove(at: randomNumber)
        
       
        
    }
    
    @IBAction func senntakusi1o() {
        ImageView.isHidden = false
        tugenomonndaia.isHidden = false
        
        if qwe.isEmpty {
            tugenomonndaia.isHidden = true
            syuuryoua.isHidden = false
        }
    }
    @IBAction func senntakusi2o() {
        ImageViewa.isHidden = false
        tugenomonndaib.isHidden = false
    }
    @IBAction func senntakusi3o() {
        ImageViewa.isHidden = false
        tugenomonndaib.isHidden = false
    }
    @IBAction func senntakusi4o() {
        ImageViewa.isHidden = false
        tugenomonndaib.isHidden = false
    }
    @IBAction func senntakusi5o() {
        ImageViewa.isHidden = false
        tugenomonndaib.isHidden = false
    }
    @IBAction func senntakusi6o() {
        ImageViewa.isHidden = false
        tugenomonndaib.isHidden = false
    }
    @IBAction func tugenomonndaiq() {
        kuizucyois()
    }
    @IBAction func tugenomonndaiw() {
        
    }
}

