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
            labelCounter.text = "Counter value: \(counter)"
        }
    }
    
    @IBOutlet weak var labelCounter: UILabel!
    @IBOutlet weak var textViewLog: UITextView!
    
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var buttonSub: UIButton!
    @IBOutlet weak var buttonResetCounter: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textViewLog.text = "History\n\n"
    }
    
    @IBAction func buttonPlusTouch(_ sender: Any) {
        counter += 1
        textViewLog.addTextScroll(msgToTimeLog("value was changed +1"))
    }
    
    @IBAction func buttonSubTouch(_ sender: Any) {
        if counter == 0 {
            textViewLog.addTextScroll(msgToTimeLog("trying to set counter value < 0"))
            
            return
        }
        
        counter -= 1
        textViewLog.addTextScroll(msgToTimeLog("value was changed -1"))
    }
    
    @IBAction func buttonResetTouch(_ sender: Any) {
        counter = 0
        textViewLog.addTextScroll(msgToTimeLog("value was reseted"))
    }
}
