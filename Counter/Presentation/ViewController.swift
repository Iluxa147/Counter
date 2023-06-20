//
//  ViewController.swift
//  Counter
//
//  Created by Ilya Pokolev on 18.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var counter: Int = 0 {
        didSet {
            counterLabel.text = "Counter value: \(counter)"
        }
    }
    
    @IBOutlet weak private var counterLabel: UILabel!
    @IBOutlet weak private var logTextView: UITextView!
    
    @IBOutlet weak private var plusButton: UIButton!
    @IBOutlet weak private var subButton: UIButton!
    @IBOutlet weak private var resetCounterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logTextView.text = "History\n\n"
    }
    
    @IBAction private func buttonPlusTouch(_ sender: Any) {
        counter += 1
        logTextView.addTextScroll(msgToTimeLog("value was changed +1"))
    }
    
    @IBAction private func buttonSubTouch(_ sender: Any) {
        if counter == 0 {
            logTextView.addTextScroll(msgToTimeLog("trying to set counter value < 0"))
            
            return
        }
        
        counter -= 1
        logTextView.addTextScroll(msgToTimeLog("value was changed -1"))
    }
    
    @IBAction private func buttonResetTouch(_ sender: Any) {
        counter = 0
        logTextView.addTextScroll(msgToTimeLog("value was reseted"))
    }
}
