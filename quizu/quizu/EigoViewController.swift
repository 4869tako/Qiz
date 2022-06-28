//
//  eigoViewController.swift
//  quizu
//
//  Created by Owner on 2021/02/03.
//

import UIKit

class EigoViewController: UIViewController {
    
    @IBOutlet var toi: UILabel!
    @IBOutlet var monndaibunn: UILabel!
    @IBOutlet var senntakusi1: UIButton!
    @IBOutlet var senntakusi2: UIButton!
    @IBOutlet var senntakusi3: UIButton!
    @IBOutlet var senntakusi4: UIButton!
    @IBOutlet var senntakusi5: UIButton!
    @IBOutlet var senntakusi6: UIButton!
    @IBOutlet var hannteiImageView: UIImageView!
    @IBOutlet var tugenomonndai: UIButton!
    @IBOutlet var syuuryoua: UIButton!
    @IBOutlet var setumei: UILabel!
    @IBOutlet var result: UILabel!
    
    var viewController: ViewController!
    
    var questions = [Question(title: "『人工的な』の英単語を答えなさい。", choice: ["artificial", "without", "impressive", "mistake", "aquarium", "appearance"], answer: "artificial"),
                     Question(title: "『目の不自由な』の英単語を答えなさい。", choice: ["blind", "barrier", "bond", "bump", "break", "burn"], answer: "blind"),
                     Question(title: "『マグロ』の英単語を答えなさい。", choice: ["tuna", "through", "traditional", "traffic", "theater", "traveling"], answer: "tuna"),
                     Question(title: "『電気』の英単語を答えなさい。", choice: ["electricity", "experience", "expensive", "especially", "ehergy", "each"], answer: "electricity"),
                     Question(title: "『発展途上の』英単語を答えなさい。", choice: ["developing", "dictionary", "daughter", "dangerous", "department", "disaster"], answer: "developing"),
                     Question(title: "『重い』の最上級を答えなさい", choice: ["heavier", "hardest", "holiday", "husband", "hymn", "heavy"], answer: "heavier")]
    
    var questionCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monndaibunn.numberOfLines = 0
        questions.shuffle()
        kuizucyois()
    }
    
    func kuizucyois() {
        
        hannteiImageView.isHidden = true
        tugenomonndai.isHidden = true
        syuuryoua.isHidden = true
        result.isHidden = true
        
        indicate()
        
        questions[questionCount].choice.shuffle()
        
        monndaibunn.text = questions[questionCount].title
        senntakusi1.setTitle(questions[questionCount].choice[0], for: .normal)
        senntakusi2.setTitle(questions[questionCount].choice[1], for: .normal)
        senntakusi3.setTitle(questions[questionCount].choice[2], for: .normal)
        senntakusi4.setTitle(questions[questionCount].choice[3], for: .normal)
        senntakusi5.setTitle(questions[questionCount].choice[4], for: .normal)
        senntakusi6.setTitle(questions[questionCount].choice[5], for: .normal)
        
        toi.text = "問 \(questionCount + 1)"
    }
    
    func answerCheck(answer:String) {
        if answer == questions[questionCount].answer {
            seikausu = seikausu + 1
            hannteiImageView.isHidden = false
            hannteiImageView.image = UIImage(named: "maru")
            tugenomonndai.isHidden = false
            result.isHidden = false
            result.text = "正解"
        } else {
            huseikaisuu = huseikaisuu + 1
            hannteiImageView.isHidden = false
            hannteiImageView.image = UIImage(named: "batu")
            self.performSegue(withIdentifier: "toNext", sender: nil)
            tugenomonndai.isHidden = false
            result.isHidden = false
            result.text = "不正解"
        }
        
        erase()
        
        questionCount = questionCount + 1
        
        if questionCount == questions.count {
            tugenomonndai.isHidden = true
            syuuryoua.isHidden = false
        }
    }
    
    func indicate() {
        toi.isHidden = false
        setumei.isHidden = false
        monndaibunn.isHidden = false
        senntakusi1.isHidden = false
        senntakusi2.isHidden = false
        senntakusi3.isHidden = false
        senntakusi4.isHidden = false
        senntakusi5.isHidden = false
        senntakusi6.isHidden = false
    }
    
    func erase() {
        toi.isHidden = true
        setumei.isHidden = true
        monndaibunn.isHidden = true
        senntakusi1.isHidden = true
        senntakusi2.isHidden = true
        senntakusi3.isHidden = true
        senntakusi4.isHidden = true
        senntakusi5.isHidden = true
        senntakusi6.isHidden = true
    }
    
    
    @IBAction func senntakusi1o() {
        answerCheck(answer:(senntakusi1.titleLabel?.text!)!)
    }
    @IBAction func senntakusi2o() {
        answerCheck(answer:(senntakusi2.titleLabel?.text!)!)
    }
    @IBAction func senntakusi3o() {
        answerCheck(answer:(senntakusi3.titleLabel?.text!)!)
    }
    @IBAction func senntakusi4o() {
        answerCheck(answer:(senntakusi4.titleLabel?.text!)!)
    }
    @IBAction func senntakusi5o() {
        answerCheck(answer:(senntakusi5.titleLabel?.text!)!)
    }
    @IBAction func senntakusi6o() {
        answerCheck(answer:(senntakusi6.titleLabel?.text!)!)
    }
    @IBAction func tugenomonndaiq() {
        kuizucyois()
    }
}
