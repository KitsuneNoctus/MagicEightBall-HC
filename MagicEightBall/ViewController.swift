//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Henry Calderon on 11/16/19.
//  Copyright © 2019 Henry Calderon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Properties

       let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not","I'm sorry, what?","They're watching","Ask Siri","Google it","Look to your left"]
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    //Hello this is a change
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateAnswer()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        generateAnswer()
    }
    
    func generateAnswer(){
        let randomIndex = Int.random(in: 0..<answers.count)
        answerLabel.text = answers[randomIndex]
    }
    
}

