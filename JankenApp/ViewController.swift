//
//  ViewController.swift
//  JankenApp
//
//  Created by 寺島 洋平 on 2019/04/16.
//  Copyright © 2019年 YoheiTerashima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var answerImageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    var answerNumber = 0
    
    @IBAction func shuffleAction(_ sender: Any) {
        
        var newAnswerNumber = 0
        
        repeat {
            newAnswerNumber = Int(arc4random_uniform(3))
        } while answerNumber == newAnswerNumber
        
        answerNumber = newAnswerNumber
        
        if answerNumber == 0 {
            answerLabel.text = "グー"
            answerImageView.image = UIImage(named: "gu")
        } else if answerNumber == 1 {
            answerLabel.text = "チョキ"
            answerImageView.image = UIImage(named: "choki")
        } else if answerNumber == 2 {
            answerLabel.text = "パー"
            answerImageView.image = UIImage(named: "pa")
        }
        
    }
    
}

