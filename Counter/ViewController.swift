//
//  ViewController.swift
//  Counter
//
//  Created by Ilya Pokolev on 02.01.2026.
//

import UIKit

class ViewController: UIViewController {
    private var counterVal: Int = 0
    
    @IBOutlet private var counterLabel: UILabel!
    @IBOutlet private var logTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setCounterValView()
        logTextView.isEditable = false
        logTextView.text = "История изменений\n"
    }

    @IBAction private func incrementButtonUp(_ sender: Any) {
        counterVal += 1
        setCounterValView()
        logValueChange(true)
    }
    
    @IBAction private func decrementButtonUp(_ sender: Any) {
        if (counterVal - 1 < 0) {
            counterVal = 0
            logTextView.addTextScrollToBottom("\(Date.formatRu()): попытка уменьшить значение счётчика ниже 0\n")
        } else {
            counterVal -= 1
            logValueChange(false)
        }
        
        setCounterValView()
    }
    
    @IBAction private func resetCounterButtonUp(_ sender: Any) {
        counterVal = 0
        setCounterValView()
        logTextView.addTextScrollToBottom("\(Date.formatRu()): значение сброшено\n")
    }
    
    private func setCounterValView() {
        counterLabel.text = "\(counterVal)"
    }
    
    private func logValueChange(_ doIncrement: Bool) {
        logTextView.addTextScrollToBottom("\(Date.formatRu()): значение изменено на \(doIncrement ? "+1" : "-1")\n")
    }
}

