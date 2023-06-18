//
//  ViewController.swift
//  Counter
//
//  Created by Ilya Pokolev on 18.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let mainFontName: String = "System"
    let COUNTER_DEFAULT = 0
    
    var counter: Int = 0
    
    @IBOutlet weak var labelCounter: UILabel!
    
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var buttonSub: UIButton!
    @IBOutlet weak var buttonResetCounter: UIButton!
    
    @IBOutlet weak var textViewLog: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateCounterLabel()
    }
    
    @IBAction func buttonPlusTouch(_ sender: Any) {
        counter += 1
        updateCounterLabel()
    }
    
    @IBAction func buttonSubTouch(_ sender: Any) {
        if counter == 0 {
            return
        }
        
        counter -= 1
        updateCounterLabel()
    }
    
    @IBAction func buttonRestTouch(_ sender: Any) {
        counter = 0
        updateCounterLabel()
    }
    
    private func updateCounterLabel() {
        labelCounter.text = String(counter)
    }
    
}

