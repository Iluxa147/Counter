//
//  ViewController.swift
//  Counter
//
//  Created by Ilya Pokolev on 02.01.2026.
//

import UIKit

final class ViewController: UIViewController {
    // MARK: - UI
    @IBOutlet weak private var counterLabel: UILabel!
    @IBOutlet weak private var logTextView: UITextView!
    
    // MARK: - State
    private var counter: Int = 0

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        updateCounterLabel()
    }

    // MARK: - Actions
    @IBAction private func incrementButtonUp(_ sender: Any) {
        counter += 1
        updateCounterLabel()
        logChange("+1")
    }
    
    @IBAction private func decrementButtonUp(_ sender: Any) {
        if (counter - 1 < 0) {
            counter = 0
            logTextView.addTextScrollToBottom("\(Date.formatRu()): попытка уменьшить значение счётчика ниже 0\n")
        } else {
            counter -= 1
            logChange("-1")
        }
        
        updateCounterLabel()
    }
    
    @IBAction private func resetCounterButtonUp(_ sender: Any) {
        counter = 0
        updateCounterLabel()
        logTextView.addTextScrollToBottom("\(Date.formatRu()): значение сброшено\n")
    }
    
    // MARK: - Private
    private func configureUI() {
        logTextView.isEditable = false
        logTextView.text = "История изменений\n"
    }
    
    private func updateCounterLabel() {
        counterLabel.text = "\(counter)"
    }
    
    private func logChange(_ value: String) {
        logTextView.addTextScrollToBottom("\(Date.formatRu()): значение изменено на \(value)\n")
    }
}

